#include <gb/gb.h>
#include "HutsMap.c"
#include "Huts.c"
#include <gb/font.h>
#include "WindowMap.c"
#include "gbt_player.h"
extern const unsigned char * song_Data[];
void main () {
 font_t min_font;
    font_init();
    min_font = font_load(font_min);
    font_set(min_font);
set_bkg_data(37, 50, Huts);
set_bkg_tiles(0, 0, 20, 18, HutsMap);
set_win_tiles(0,0, 0, 1 ,WindowMap);
move_win(7, 112);
SHOW_BKG;
DISPLAY_ON;
while(1){
    disable_interrupts();

    gbt_play(song_Data, 2, 7);
    gbt_loop(1);

    set_interrupts(VBL_IFLAG);
    enable_interrupts();
wait_vbl_done();    
int x = 0;
if (1 == 1) {
int indent = 17;
int end = 41;
while (x < 60 & x != end) {
    if (x<=20 & end > 20 & x < indent){
    set_win_tiles(0, 0,x, 1,WindowMap);
    x++;
    gbt_update();
}
        else if (((x>20 & x<=40) | x >= indent) & x != end) {
    int a = 0;
    set_win_tiles(-indent, 2,x, 1,WindowMap);
    x++;
    a++;
    gbt_update();
    
}
        else if (x>40 & x<=60 & x != end) {
    int a = 0;
    set_win_tiles(-40, 4,x, 1,WindowMap);
    x++;
    a++;
    gbt_update();
}
        else if (x == end) {
        gbt_update();
        break;
        
}
if (joypad() == J_A | J_B)
{
    delay(30);
    gbt_update();
}
else {
    delay(80);
    gbt_update();
}
SHOW_WIN;
gbt_update();
}
gbt_update();
break;
gbt_update();
}
else {
;
gbt_update();
}
gbt_update();
}
gbt_update();
}
