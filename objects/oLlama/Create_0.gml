/// @description Insert description here
// You can write your code in this editor
event_inherited();
player = true;

image_xscale = -1;

image_speed = 0;
depth = -y;


maxStamina = 100;
stamina = maxStamina;



mySkills = ds_list_create();
ds_list_add(mySkills,skillList[| 0]);
ds_list_add(mySkills,skillList[| 1]);
ds_list_add(mySkills,skillList[| 2]);



madeOptions = false;

selecting = false;
index = 0;
d = 0;
wait = 0;