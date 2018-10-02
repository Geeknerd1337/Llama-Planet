/// @description Insert description here
// You can write your code in this editor
speed *= .99
image_alpha *= .95
size *= .999
if image_alpha <= .01 { instance_destroy() } 

draw_set_color(c_dkgray)
draw_set_alpha(image_alpha)
draw_circle(x,y,size,false)
draw_set_alpha(1)

