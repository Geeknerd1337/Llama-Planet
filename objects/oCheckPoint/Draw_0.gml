/// @description Insert description here
// You can write your code in this editor
draw_self()
glow *= .99
draw_sprite_ext(sCheckPoint_glow,0,x,y,1,1,0,merge_color(c_yellow,c_aqua,.9),glow*abs(sin(current_time/300))/2)