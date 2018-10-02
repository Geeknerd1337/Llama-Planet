/// @description Insert description here
// You can write your code in this editor
window_x = window_mouse_get_x();
window_y = window_mouse_get_y();
color = c_white;


y2 = lerp(y2,y2_tar,0.3);


NineSliceBox_Stretched(s_nineSliceExample,x1,y1,x2,y2);


if(pause != true){

instance_destroy();
	
}



if(y2 > y2_tar - .05 and y2 < y2_tar + 0.05){
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	scr_pause_button(x1 + width, y1 + height, "QUIT");

	draw_set_halign(-1);
	draw_set_valign(-1);
	
	
}