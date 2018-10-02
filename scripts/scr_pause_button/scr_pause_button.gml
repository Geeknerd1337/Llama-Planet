if(point_in_rectangle(window_x,window_y,(argument0) - (string_width(argument2)/2),(argument1) - (string_height(argument2)/2),(argument0) + (string_width(argument2)/2),(argument1) + (string_height(argument2)/2))){
color = c_gray;	
if(mouse_check_button_pressed(mb_left)){
	if(argument2 = "QUIT"){  room_goto(rMenu_main);   }
}
}
	
	
draw_text_outlined_ext(argument0 ,argument1,argument2,color,c_black,image_xscale,image_yscale,0);
	
	