;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.7 #12016 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _gbt_update
	.globl _gbt_loop
	.globl _gbt_play
	.globl _font_set
	.globl _font_load
	.globl _font_init
	.globl _set_win_tiles
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _set_interrupts
	.globl _disable_interrupts
	.globl _enable_interrupts
	.globl _joypad
	.globl _delay
	.globl _WindowMap
	.globl _Huts
	.globl _HutsMap
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_HutsMap::
	.ds 360
_Huts::
	.ds 224
_WindowMap::
	.ds 40
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;HutsMap.c:25: unsigned char HutsMap[] =
	ld	hl, #_HutsMap
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0001)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0002)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0003)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0004)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0005)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0006)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0007)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0008)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0009)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x000a)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x000b)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x000c)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x000d)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x000e)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x000f)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0010)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0011)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0012)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0013)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0014)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0015)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0016)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0017)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0018)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0019)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x001a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x001b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x001c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x001d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x001e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x001f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0020)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0021)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0022)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0023)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0024)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0025)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0026)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0027)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0028)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0029)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x002a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x002b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x002c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x002d)
	ld	(hl), #0x30
	ld	hl, #(_HutsMap + 0x002e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x002f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0030)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0031)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0032)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0033)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0034)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0035)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0036)
	ld	(hl), #0x30
	ld	hl, #(_HutsMap + 0x0037)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0038)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0039)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x003a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x003b)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x003c)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x003d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x003e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x003f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0040)
	ld	(hl), #0x2a
	ld	hl, #(_HutsMap + 0x0041)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0042)
	ld	(hl), #0x2b
	ld	hl, #(_HutsMap + 0x0043)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0044)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0045)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0046)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0047)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0048)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0049)
	ld	(hl), #0x2a
	ld	hl, #(_HutsMap + 0x004a)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x004b)
	ld	(hl), #0x2b
	ld	hl, #(_HutsMap + 0x004c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x004d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x004e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x004f)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0050)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0051)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0052)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0053)
	ld	(hl), #0x32
	ld	hl, #(_HutsMap + 0x0054)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0055)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0056)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0057)
	ld	(hl), #0x31
	ld	hl, #(_HutsMap + 0x0058)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0059)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x005a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x005b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x005c)
	ld	(hl), #0x32
	ld	hl, #(_HutsMap + 0x005d)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x005e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x005f)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0060)
	ld	(hl), #0x31
	ld	hl, #(_HutsMap + 0x0061)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0062)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0063)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0064)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0065)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0066)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0067)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0068)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0069)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x006a)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x006b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x006c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x006d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x006e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x006f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0070)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0071)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0072)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0073)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0074)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0075)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0076)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0077)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0078)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0079)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x007a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x007b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x007c)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x007d)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x007e)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x007f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0080)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0081)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0082)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0083)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0084)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0085)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0086)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0087)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0088)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0089)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x008a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x008b)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x008c)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x008d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x008e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x008f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0090)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0091)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0092)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0093)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0094)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0095)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0096)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0097)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0098)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0099)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x009a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x009b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x009c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x009d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x009e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x009f)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00a0)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00a1)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00a2)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00a3)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00a4)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00a5)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00a6)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00a7)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00a8)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00a9)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00aa)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ab)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ac)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ad)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ae)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00af)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00b0)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00b1)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00b2)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00b3)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00b4)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00b5)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00b6)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00b7)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00b8)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00b9)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ba)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00bb)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00bc)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00bd)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00be)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00bf)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00c0)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00c1)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00c2)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00c3)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00c4)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00c5)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00c6)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00c7)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00c8)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00c9)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ca)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00cb)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00cc)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00cd)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ce)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00cf)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d0)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d1)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d2)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d3)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d4)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d5)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d6)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d7)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d8)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00d9)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00da)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00db)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00dc)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00dd)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00de)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00df)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e0)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e1)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e2)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e3)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e4)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e5)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e6)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e7)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e8)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00e9)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ea)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00eb)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ec)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ed)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ee)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ef)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00f0)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x00f1)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00f2)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00f3)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00f4)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00f5)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00f6)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00f7)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00f8)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00f9)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00fa)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00fb)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00fc)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00fd)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00fe)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x00ff)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0100)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0101)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0102)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0103)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0104)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0105)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0106)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0107)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0108)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0109)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x010a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x010b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x010c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x010d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x010e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x010f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0110)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0111)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0112)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0113)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0114)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0115)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0116)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0117)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0118)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0119)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x011a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x011b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x011c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x011d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x011e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x011f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0120)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0121)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0122)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0123)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0124)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0125)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0126)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0127)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0128)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0129)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x012a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x012b)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x012c)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x012d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x012e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x012f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0130)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0131)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0132)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0133)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0134)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0135)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0136)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0137)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0138)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0139)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x013a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x013b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x013c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x013d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x013e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x013f)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0140)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0141)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0142)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0143)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0144)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0145)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0146)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0147)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0148)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0149)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x014a)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x014b)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x014c)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x014d)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x014e)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x014f)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0150)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0151)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0152)
	ld	(hl), #0x29
	ld	hl, #(_HutsMap + 0x0153)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0154)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0155)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0156)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0157)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0158)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0159)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x015a)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x015b)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x015c)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x015d)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x015e)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x015f)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0160)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0161)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0162)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0163)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0164)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0165)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0166)
	ld	(hl), #0x28
	ld	hl, #(_HutsMap + 0x0167)
	ld	(hl), #0x28
;Huts.c:26: unsigned char Huts[] =
	ld	hl, #_Huts
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0002)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0003)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0004)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0005)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0006)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0007)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0009)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x000a)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x000b)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x000d)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x000e)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x000f)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0011)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0012)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0013)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0014)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0015)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0016)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0017)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0018)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0019)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x001a)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x001b)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x001c)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x001d)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x001e)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x001f)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0020)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0021)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0022)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0023)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0024)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0025)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0027)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0028)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0029)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x002a)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x002b)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x002c)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x002d)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x002e)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x002f)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0030)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0031)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0032)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0033)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0034)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0035)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0036)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0037)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0038)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0039)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x003a)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x003b)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x003c)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x003d)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x003e)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x003f)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0040)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0041)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0042)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0043)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0044)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0045)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0046)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0047)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0048)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0049)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x004a)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x004b)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x004c)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x004d)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x004e)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x004f)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0050)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0051)
	ld	(hl), #0x01
	ld	hl, #(_Huts + 0x0052)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0053)
	ld	(hl), #0x03
	ld	hl, #(_Huts + 0x0054)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0055)
	ld	(hl), #0x07
	ld	hl, #(_Huts + 0x0056)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0057)
	ld	(hl), #0x0f
	ld	hl, #(_Huts + 0x0058)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0059)
	ld	(hl), #0x1f
	ld	hl, #(_Huts + 0x005a)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x005b)
	ld	(hl), #0x3f
	ld	hl, #(_Huts + 0x005c)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x005d)
	ld	(hl), #0x7f
	ld	hl, #(_Huts + 0x005e)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x005f)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0060)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0061)
	ld	(hl), #0x80
	ld	hl, #(_Huts + 0x0062)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0063)
	ld	(hl), #0xc0
	ld	hl, #(_Huts + 0x0064)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0065)
	ld	(hl), #0xe0
	ld	hl, #(_Huts + 0x0066)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0067)
	ld	(hl), #0xf0
	ld	hl, #(_Huts + 0x0068)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0069)
	ld	(hl), #0xf8
	ld	hl, #(_Huts + 0x006a)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x006b)
	ld	(hl), #0xfc
	ld	hl, #(_Huts + 0x006c)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x006d)
	ld	(hl), #0xfe
	ld	hl, #(_Huts + 0x006e)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x006f)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0070)
	ld	(hl), #0x01
	ld	hl, #(_Huts + 0x0071)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0072)
	ld	(hl), #0x03
	ld	hl, #(_Huts + 0x0073)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0074)
	ld	(hl), #0x07
	ld	hl, #(_Huts + 0x0075)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0076)
	ld	(hl), #0x0f
	ld	hl, #(_Huts + 0x0077)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0078)
	ld	(hl), #0x1f
	ld	hl, #(_Huts + 0x0079)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x007a)
	ld	(hl), #0x3f
	ld	hl, #(_Huts + 0x007b)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x007c)
	ld	(hl), #0x7f
	ld	hl, #(_Huts + 0x007d)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x007e)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x007f)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0080)
	ld	(hl), #0x80
	ld	hl, #(_Huts + 0x0081)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0082)
	ld	(hl), #0xc0
	ld	hl, #(_Huts + 0x0083)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0084)
	ld	(hl), #0xe0
	ld	hl, #(_Huts + 0x0085)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0086)
	ld	(hl), #0xf0
	ld	hl, #(_Huts + 0x0087)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0088)
	ld	(hl), #0xf8
	ld	hl, #(_Huts + 0x0089)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x008a)
	ld	(hl), #0xfc
	ld	hl, #(_Huts + 0x008b)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x008c)
	ld	(hl), #0xfe
	ld	hl, #(_Huts + 0x008d)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x008e)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x008f)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0090)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0091)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0092)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0093)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0094)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0095)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0096)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0097)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x0098)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x0099)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x009a)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x009b)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x009c)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x009d)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x009e)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x009f)
	ld	(hl), #0x18
	ld	hl, #(_Huts + 0x00a0)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00a1)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00a2)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00a3)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00a4)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00a5)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00a6)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00a7)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00a8)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00a9)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00aa)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00ab)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00ac)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00ad)
	ld	(hl), #0x18
	ld	hl, #(_Huts + 0x00ae)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00af)
	ld	(hl), #0x18
	ld	hl, #(_Huts + 0x00b0)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00b1)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00b2)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00b3)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00b4)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00b5)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00b6)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00b7)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00b8)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00b9)
	ld	(hl), #0x18
	ld	hl, #(_Huts + 0x00ba)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00bb)
	ld	(hl), #0x3c
	ld	hl, #(_Huts + 0x00bc)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00bd)
	ld	(hl), #0x7e
	ld	hl, #(_Huts + 0x00be)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00bf)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00c0)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00c1)
	ld	(hl), #0xc0
	ld	hl, #(_Huts + 0x00c2)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00c3)
	ld	(hl), #0xe0
	ld	hl, #(_Huts + 0x00c4)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00c5)
	ld	(hl), #0xf0
	ld	hl, #(_Huts + 0x00c6)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00c7)
	ld	(hl), #0xf8
	ld	hl, #(_Huts + 0x00c8)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00c9)
	ld	(hl), #0xfc
	ld	hl, #(_Huts + 0x00ca)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00cb)
	ld	(hl), #0xfe
	ld	hl, #(_Huts + 0x00cc)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00cd)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00ce)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00cf)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00d0)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00d1)
	ld	(hl), #0x03
	ld	hl, #(_Huts + 0x00d2)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00d3)
	ld	(hl), #0x07
	ld	hl, #(_Huts + 0x00d4)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00d5)
	ld	(hl), #0x0f
	ld	hl, #(_Huts + 0x00d6)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00d7)
	ld	(hl), #0x1f
	ld	hl, #(_Huts + 0x00d8)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00d9)
	ld	(hl), #0x3f
	ld	hl, #(_Huts + 0x00da)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00db)
	ld	(hl), #0x7f
	ld	hl, #(_Huts + 0x00dc)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00dd)
	ld	(hl), #0x00
	ld	hl, #(_Huts + 0x00de)
	ld	(hl), #0xff
	ld	hl, #(_Huts + 0x00df)
	ld	(hl), #0x00
;WindowMap.c:3: unsigned char WindowMap[] =
	ld	hl, #_WindowMap
	ld	(hl), #0x13
	ld	hl, #(_WindowMap + 0x0001)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x0002)
	ld	(hl), #0x21
	ld	hl, #(_WindowMap + 0x0003)
	ld	(hl), #0x19
	ld	hl, #(_WindowMap + 0x0004)
	ld	(hl), #0x18
	ld	hl, #(_WindowMap + 0x0005)
	ld	(hl), #0x0e
	ld	hl, #(_WindowMap + 0x0006)
	ld	(hl), #0x0f
	ld	hl, #(_WindowMap + 0x0007)
	ld	(hl), #0x1c
	ld	hl, #(_WindowMap + 0x0008)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x0009)
	ld	(hl), #0x21
	ld	hl, #(_WindowMap + 0x000a)
	ld	(hl), #0x12
	ld	hl, #(_WindowMap + 0x000b)
	ld	(hl), #0x23
	ld	hl, #(_WindowMap + 0x000c)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x000d)
	ld	(hl), #0x1e
	ld	hl, #(_WindowMap + 0x000e)
	ld	(hl), #0x12
	ld	hl, #(_WindowMap + 0x000f)
	ld	(hl), #0x0f
	ld	hl, #(_WindowMap + 0x0010)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x0011)
	ld	(hl), #0x1d
	ld	hl, #(_WindowMap + 0x0012)
	ld	(hl), #0x19
	ld	hl, #(_WindowMap + 0x0013)
	ld	(hl), #0x1f
	ld	hl, #(_WindowMap + 0x0014)
	ld	(hl), #0x18
	ld	hl, #(_WindowMap + 0x0015)
	ld	(hl), #0x0e
	ld	hl, #(_WindowMap + 0x0016)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x0017)
	ld	(hl), #0x13
	ld	hl, #(_WindowMap + 0x0018)
	ld	(hl), #0x1d
	ld	hl, #(_WindowMap + 0x0019)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x001a)
	ld	(hl), #0x18
	ld	hl, #(_WindowMap + 0x001b)
	ld	(hl), #0x19
	ld	hl, #(_WindowMap + 0x001c)
	ld	(hl), #0x1e
	ld	hl, #(_WindowMap + 0x001d)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x001e)
	ld	(hl), #0x21
	ld	hl, #(_WindowMap + 0x001f)
	ld	(hl), #0x19
	ld	hl, #(_WindowMap + 0x0020)
	ld	(hl), #0x1c
	ld	hl, #(_WindowMap + 0x0021)
	ld	(hl), #0x15
	ld	hl, #(_WindowMap + 0x0022)
	ld	(hl), #0x13
	ld	hl, #(_WindowMap + 0x0023)
	ld	(hl), #0x18
	ld	hl, #(_WindowMap + 0x0024)
	ld	(hl), #0x11
	ld	hl, #(_WindowMap + 0x0025)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x0026)
	ld	(hl), #0x00
	ld	hl, #(_WindowMap + 0x0027)
	ld	(hl), #0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:8: void main () {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	add	sp, #-11
;main.c:10: font_init();
	call	_font_init
;main.c:11: min_font = font_load(font_min);
	ld	hl, #_font_min
	push	hl
	call	_font_load
	add	sp, #2
;main.c:12: font_set(min_font);
	push	de
	call	_font_set
	add	sp, #2
;main.c:13: set_bkg_data(37, 50, Huts);
	ld	hl, #_Huts
	push	hl
	ld	de, #0x3225
	push	de
	call	_set_bkg_data
	add	sp, #4
;main.c:14: set_bkg_tiles(0, 0, 20, 18, HutsMap);
	ld	hl, #_HutsMap
	push	hl
	ld	de, #0x1214
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_bkg_tiles
	add	sp, #6
;main.c:15: set_win_tiles(0,0, 0, 1 ,WindowMap);
	ld	hl, #_WindowMap
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
;C:/gbdk/include/gb/gb.h:893: WX_REG=x, WY_REG=y;
	ld	a, #0x07
	ldh	(_WX_REG+0),a
	ld	a, #0x70
	ldh	(_WY_REG+0),a
;main.c:17: SHOW_BKG;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x01
	ldh	(_LCDC_REG+0),a
;main.c:18: DISPLAY_ON;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x80
	ldh	(_LCDC_REG+0),a
;main.c:19: disable_interrupts();
	call	_disable_interrupts
;main.c:21: gbt_play(song_Data, 2, 7);
	ld	de, #0x0702
	push	de
	ld	hl, #_song_Data
	push	hl
	call	_gbt_play
	add	sp, #4
;main.c:22: gbt_loop(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_gbt_loop
	inc	sp
;main.c:24: set_interrupts(VBL_IFLAG);
	ld	a, #0x01
	push	af
	inc	sp
	call	_set_interrupts
	inc	sp
;main.c:25: enable_interrupts();
	call	_enable_interrupts
;main.c:27: wait_vbl_done();    
	call	_wait_vbl_done
;main.c:28: int x = 0;
	ld	bc, #0x0000
;main.c:32: while (x < 60 & x != end) {
00115$:
	ld	a, c
	sub	a, #0x3c
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	ld	a, #0x00
	rla
	ldhl	sp,	#10
	ld	(hl), a
	ld	a, c
	sub	a, #0x29
	or	a, b
	ld	a, #0x01
	jr	Z, 00166$
	xor	a, a
00166$:
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (hl)
	xor	a, #0x01
	inc	hl
	ld	(hl), a
	ld	a, (hl+)
	ld	(hl), a
	ldhl	sp,	#10
	ld	a, (hl)
	ldhl	sp,	#2
	and	a,(hl)
	jp	Z, 00128$
;main.c:33: if (x<=20 & end > 20 & x < indent){
	ld	e, b
	ld	d, #0x00
	ld	a, #0x14
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00167$
	bit	7, d
	jr	NZ, 00168$
	cp	a, a
	jr	00168$
00167$:
	bit	7, d
	jr	Z, 00168$
	scf
00168$:
	ld	a, #0x00
	rla
	ldhl	sp,	#10
	ld	(hl), a
	ld	a, (hl)
	xor	a, #0x01
	and	a, #0x01
	dec	hl
	dec	hl
	ld	(hl), a
	ld	a, c
	sub	a, #0x11
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	ld	a, #0x00
	rla
	inc	hl
	ld	(hl), a
;main.c:34: set_win_tiles(0, 0,x, 1,WindowMap);
	ldhl	sp,	#3
	ld	(hl), c
;main.c:35: x++;
	ld	l, c
	ld	h, b
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;main.c:33: if (x<=20 & end > 20 & x < indent){
	ldhl	sp,	#8
	ld	a, (hl+)
	and	a,(hl)
	jr	Z, 00110$
;main.c:34: set_win_tiles(0, 0,x, 1,WindowMap);
	ld	hl, #_WindowMap
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	ldhl	sp,	#6
	ld	a, (hl)
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
;main.c:35: x++;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
;main.c:36: gbt_update();
	push	bc
	call	_gbt_update
	pop	bc
	jp	00111$
00110$:
;main.c:38: else if (((x>20 & x<=40) | x >= indent) & x != end) {
	ld	e, b
	ld	d, #0x00
	ld	a, #0x28
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00169$
	bit	7, d
	jr	NZ, 00170$
	cp	a, a
	jr	00170$
00169$:
	bit	7, d
	jr	Z, 00170$
	scf
00170$:
	ld	a, #0x00
	rla
	ldhl	sp,	#6
	ld	(hl), a
	ld	a, (hl)
	xor	a, #0x01
	ldhl	sp,	#10
	and	a, (hl)
	ld	e, a
	dec	hl
	ld	a, (hl)
	xor	a, #0x01
	dec	hl
	dec	hl
	ld	(hl), e
	inc	hl
	ld	(hl), #0x00
	ld	e, #0x00
	dec	hl
	or	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ld	a, e
	dec	hl
	or	a, (hl)
	inc	hl
	inc	hl
	ld	(hl), a
	ldhl	sp,	#1
	ld	e, (hl)
	ld	d, #0x00
	ld	a, e
	ldhl	sp,	#9
	and	a, (hl)
	ld	e, a
	ld	a, d
	inc	hl
	and	a, (hl)
	or	a, e
	jr	Z, 00107$
;main.c:40: set_win_tiles(-indent, 2,x, 1,WindowMap);
	ld	hl, #_WindowMap
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	ldhl	sp,	#6
	ld	d, (hl)
	ld	e,#0x02
	push	de
	ld	a, #0xef
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
;main.c:41: x++;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
;main.c:43: gbt_update();
	push	bc
	call	_gbt_update
	pop	bc
	jr	00111$
00107$:
;main.c:46: else if (x>40 & x<=60 & x != end) {
	ldhl	sp,	#6
	ld	l, (hl)
	ld	e, b
	ld	d, #0x00
	ld	a, #0x3c
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	bit	7, e
	jr	Z, 00171$
	bit	7, d
	jr	NZ, 00172$
	cp	a, a
	jr	00172$
00171$:
	bit	7, d
	jr	Z, 00172$
	scf
00172$:
	ld	a, #0x00
	rla
	xor	a, #0x01
	and	a, l
	ldhl	sp,	#2
	and	a,(hl)
	jr	Z, 00104$
;main.c:48: set_win_tiles(-40, 4,x, 1,WindowMap);
	ld	hl, #_WindowMap
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	ldhl	sp,	#6
	ld	d, (hl)
	ld	e,#0x04
	push	de
	ld	a, #0xd8
	push	af
	inc	sp
	call	_set_win_tiles
	add	sp, #6
;main.c:49: x++;
	ldhl	sp,#4
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
;main.c:51: gbt_update();
	push	bc
	call	_gbt_update
	pop	bc
	jr	00111$
00104$:
;main.c:53: else if (x == end) {
	ldhl	sp,	#0
	ld	a, (hl)
	or	a, a
	jr	Z, 00111$
;main.c:54: gbt_update();
	call	_gbt_update
;main.c:55: break;
	jr	00128$
00111$:
;main.c:58: if (joypad() == J_A | J_B)
	call	_joypad
	ld	a, e
	sub	a, #0x10
	ld	a, #0x01
	jr	Z, 00174$
	xor	a, a
00174$:
	ld	e, #0x00
	or	a,#0x20
	jr	NZ, 00175$
	or	a,e
	jr	Z, 00113$
00175$:
;main.c:60: delay(30);
	push	bc
	ld	hl, #0x001e
	push	hl
	call	_delay
	add	sp, #2
	pop	bc
	jr	00114$
00113$:
;main.c:64: delay(80);
	push	bc
	ld	hl, #0x0050
	push	hl
	call	_delay
	add	sp, #2
	call	_gbt_update
	pop	bc
00114$:
;main.c:67: SHOW_WIN;
	ldh	a, (_LCDC_REG+0)
	or	a, #0x20
	ldh	(_LCDC_REG+0),a
;main.c:68: gbt_update();
	push	bc
	call	_gbt_update
	pop	bc
	jp	00115$
;main.c:90: gbt_update();
00128$:
;main.c:94: }
	add	sp, #11
	ret
	.area _CODE
	.area _CABS (ABS)
