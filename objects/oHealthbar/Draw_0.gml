/// @description Insert description here
// You can write your code in this editor
if(creator != noone){

var _padding = 5;
var _height = 25;
var _x1 = creator.x - sprite_get_width(creator.sprite_index)/2;
var _y1 = creator.y + _padding;
var _x2 = _x1 + sprite_get_width(creator.sprite_index);
var _y2 = _y1 + _height;

draw_healthbar(_x1,_y1,_x2,_y2,(creator.spook/creator.maxSpook) * 100,c_black,c_yellow,c_yellow,0,true,true);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_text_outlined((_x1 + _x2)/2,(_y1 + _y2)/2,"Spook: " + string(creator.spook) + "/" + string(creator.maxSpook),c_white,c_black);
draw_set_halign(-1);
draw_set_valign(-1);
	
}