/// @description Insert description here
// You can write your code in this editor



var _mx = window_mouse_get_x();
var _my = window_mouse_get_y();

for(var _i = 0; _i < size; _i++){
selected[_i] = false;	
}

selected[index] = true;

var _x1, _y1, _x2, _y2;
for(var _i = 0; _i < size; _i++){
	var _mp = list[| _i];
	_x1 = x;
	_y1 = y + (_i * optionHeight);
	_x2 = _x1 + optionWidth;
	_y2 = _y1 + optionHeight;
	NineSliceBox_Stretched(UI_nineslice,_x1,_y1,_x2,_y2);
	if(selected[_i]){
	draw_set_alpha(0.5);
	draw_set_color(c_gray);
	draw_rectangle(_x1,_y1,_x2,_y2,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
		
	}
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text((_x1 + _x2)/2,(_y1 + _y2)/2,_mp[? "name"] + " D: " + string(_mp[? "damage"]) + " C: " + string(_mp[? "cost"]));
	draw_set_halign(-1);
	draw_set_valign(-1);
	
}


if(keyboard_check_pressed(vk_down)){
	index++;
	if(index > size - 1){
		index = 0;	
	}
	
}

if(wait > 0){
var _mp = list[| index];
if(keyboard_check_pressed(vk_enter) and creator.stamina > _mp[? "cost"]){
	creator.selecting = true;
	creator.d = _mp[? "damage"];
	instance_destroy();
}
}
wait++;