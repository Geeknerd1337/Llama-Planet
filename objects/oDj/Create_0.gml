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







globalvar tagList;
tagList = ds_list_create();

/*
Note for Katilyn and also for myself:
Populate the tags list with an array of strings that are names of tags.
*/
#region Initializing and adding tags
add_tag("Base Tag","Just a basic tag for testing",-1,-1,0,0);
#endregion


globalvar skillList;
skillList = ds_list_create();


#region Initializing and adding skills
add_skill("Base Skill","Just a basic skill for testing",10,undefined,1);
add_skill("Base Skill 2","Just a basic skill for testing",5,undefined,1);
add_skill("Base Skill 3","Just a basic skill for testing",6,undefined,1);
#endregion