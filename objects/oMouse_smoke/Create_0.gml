/// @description Insert description here
// You can write your code in this editor
size = random_range(1,5)
x = window_mouse_get_x()+5
y = window_mouse_get_y()+10
motion_set(oCursor.dir,oCursor.spd/3)
hspeed += random_range(-.25,.25)
vspeed += -random_range(1,2)
image_alpha = .5
