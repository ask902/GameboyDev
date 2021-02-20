#include <gb/gb.h>
#include <gb/cgb.h>
#include "Krys.c"
#include "Krys.h"
#include "simple_background.c"
#include "simple_background_map.c"
const UWORD backgroundpalette[] = {
RGB_WHITE, RGB_LIGHTGRAY, RGB_DARKGRAY, RGB_BLACK

}; 


const UWORD spritepalette[] =  {
 KrysCGBPal0c0, 
 RGB_LIGHTFLESH, 
 KrysCGBPal0c2, 
 KrysCGBPal0c3, 

}
;
void main() {
	SPRITES_8x16;
	set_bkg_data(0, 36, backgroundtiles);
	set_bkg_tiles(0, 0, 20, 18, backgroundmap);
	set_bkg_palette(0,4, backgroundpalette);
	set_sprite_palette(0, 1, spritepalette);
	SHOW_BKG;
	DISPLAY_ON;
	set_sprite_data(0, 45, Krys);
	set_sprite_tile(0, 12);
	move_sprite(0, 56, 72);
	set_sprite_tile(1, 14);
	move_sprite(1, 56 + 8, 72);
	SHOW_SPRITES;
	//Kris Character Movement
	while(1){
        switch(joypad()){
            case J_LEFT:  
				set_sprite_tile(0, 24);
				set_sprite_tile(1, 26);
				delay(60);
				switch (joypad()) {
					case J_LEFT:
 						set_sprite_tile(0, 29);
						set_sprite_tile(1,31);
                		scroll_sprite(0,-4,0);
						scroll_sprite(1,-4,0);
						delay(80);
						set_sprite_tile(0, 24);
						set_sprite_tile(1, 26);
						delay(80);
						set_sprite_tile(0, 29);
						set_sprite_tile(1,31);
               			scroll_sprite(0,-4,0);
						scroll_sprite(1,-4,0);
						delay(80);
						set_sprite_tile(0, 24);
						set_sprite_tile(1, 26);
						delay(5);
					case !J_LEFT:
						break; 
					}	
					break;					
            case J_RIGHT: 
				set_sprite_tile(0, 33);
				set_sprite_tile(1, 35);
				delay(60);
					switch(joypad()) {
				case J_RIGHT:
					set_sprite_tile(0, 37);
					set_sprite_tile(1, 39);
               		scroll_sprite(0,4,0);
					scroll_sprite(1,4,0);
					delay(80);
					set_sprite_tile(0, 33);
					set_sprite_tile(1, 35);
					delay(80);
					set_sprite_tile(0, 37);
					set_sprite_tile(1, 39);
                	scroll_sprite(0,4,0);
					scroll_sprite(1,4 ,0);
					delay(80);
					set_sprite_tile(0, 33);
					set_sprite_tile(1, 35);
					delay(5);
					case !J_RIGHT:
					break;
					}
                break;  
            case J_UP: 
				set_sprite_tile(0, 0);
				set_sprite_tile(1, 2);
				delay(60);
					switch(joypad()) {
					case J_UP:
               	scroll_sprite(0,0,-4);
					scroll_sprite(1,0,-4);
					delay(15);
					set_sprite_tile(0, 4);
					set_sprite_tile(1, 6);
					delay(80);
					set_sprite_tile(0, 0);
					set_sprite_tile(1, 2);
					delay(80);
					scroll_sprite(0,0,-4);
					scroll_sprite(1,0,-4);
					delay(1);
					set_sprite_tile(0, 8);
					set_sprite_tile(1, 10);
					delay(80);
					set_sprite_tile(0, 0);
					set_sprite_tile(1, 2);
					delay(5);
					case !J_UP:
					break;
					}
                break; 
            case J_DOWN:  
				set_sprite_tile(0, 12);
				set_sprite_tile(1, 14);
				delay(60);
				switch(joypad()) {
				case J_DOWN:			
                scroll_sprite(0,0,4);
				scroll_sprite(1,0,4);
				delay(15);
				set_sprite_tile(0, 16);
				set_sprite_tile(1, 18);
				delay(80);
				set_sprite_tile(0, 12);
				set_sprite_tile(1, 14);
				delay(80);
				set_sprite_tile(0, 20);
				set_sprite_tile(1, 22);
				delay(1);
				scroll_sprite(0, 0, 4);
				scroll_sprite(1, 0, 4);
				delay(80);
				set_sprite_tile(0, 12);
				set_sprite_tile(1, 14);
				delay(5);
				case !J_DOWN:
				break;
				}
                break;  		
}   		 
delay(35);
	}
}
