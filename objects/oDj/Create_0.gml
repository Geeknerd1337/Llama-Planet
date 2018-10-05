/// @description Insert description here
// You can write your code in this editor
global.debug = false
global.timescale = 1
global.Gravity = .07



keybinds_init();
if(file_exists("controls.cfl")){
	keyboard_load();
}else{
	keyboard_save();
}






globalvar input_up;
input_up = keyboard_check(uk_)
globalvar input_left;
input_left = keyboard_check(lk_)
globalvar input_down;
input_down = keyboard_check(dk_)
globalvar input_right;
input_right = keyboard_check(rk_)

esctimer = 0 

globalvar pause;
pause = false


globalvar GX;
GX = 1600/window_get_width();
globalvar GY;
GY = 900/window_get_height();




for(var i = 0; i<1000; i++){
achievement[i] = false;
}



globalvar skills;
skills = ds_list_create();
skills_init();