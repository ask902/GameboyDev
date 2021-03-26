INCLUDE "hardware.inc"
SECTION "Header", ROM0[$100] ; I'm repeating this line so you know where we are. Don't write it twice!

EntryPoint: ; This is where execution begins
    di ; Disable interrupts. That way we can avoid dealing with them, especially since we didn't talk about them yet :p
    jp Start ; Leave this tiny space
REPT $150 - $104
    db 0
ENDR
SECTION "Game code", ROM0
Start:
    ; Turn off the LCD
.waitVBlank
    ld a, [rLY]
    cp 144 ; Check if the LCD is past VBlank
    jr c, .waitVBlank

    xor a ; ld a, 0 ; We only need to reset a value with bit 7 reset, but 0 does the job
    ld [rLCDC], a ; We will have to write to LCDC again later, so it's not a bother, really.
    ld hl, $9000 
    ; Copy the sprite data into VRAM
    ld hl, $9000 + 16
    ld de, smiley_sprite
    ld b, 16
copy_loop:
     ld a, [de]
     inc de
     ld [hl+], a
     dec b
     jp nz, copy_loop
    
    ; Set the first byte of the background tile map
    ld hl, $9800
    ld [hl], 1
    
    ; Set the background palette
    ld hl, $ff47
    ld [hl], %11100100
    
    ; Stop execution
smiley_sprite: db $FF, $FF, $81, $81, $A5, $A5, $81, $81, $A5, $A5, $99, $99, $81, $81, $FF, $FF
    ; Shut sound down
    ld [rNR52], a

    ; Turn screen on, display background
    ld a, %10000001
    ld [rLCDC], a
    ; Lock up
    .lockup
    jr .lockup
