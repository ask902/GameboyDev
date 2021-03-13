#include <gb/gb.h>
#include "HutsMap.c"
#include "Huts.c"
#include <gb/font.h>
#include "WindowMap.c"
void main () {
    font_t min_font;
    font_init();
    min_font = font_load(font_min);
    font_set(min_font);
set_bkg_data(37, 50, Huts);
set_bkg_tiles(0, 0, 20, 18, HutsMap);
set_win_tiles(0,0, 0, 1 ,WindowMap);
move_win(7, 112);
int x = 0;
int indent = 21;
int end = 22;
while (x < 60 & x != end) {
if (x<=20 & end > 20 & x < indent){
    set_win_tiles(0, 0,x, 1,WindowMap);
    x++;
}
else if (((x>20 & x<=40) | x >= indent) & x != end) {
    int a = 0;
    set_win_tiles(-indent, 2,x, 1,WindowMap);
    x++;
    a++;
}
else if (x>40 & x<=60 & x != end) {
    int a = 0;
    set_win_tiles(-40, 4,x, 1,WindowMap);
    x++;
    a++;
}
else if (x == end) {
    break;

}
if (joypad() == J_A | J_B)
{
    delay(20);
}
else {
    delay(65);
}
SHOW_WIN;
SHOW_BKG;
DISPLAY_ON;
}
}
