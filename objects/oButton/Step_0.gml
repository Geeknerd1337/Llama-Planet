if !c { //mock create event 
	oscale = image_xscale
	scale = image_xscale
	c = true
}
color = c_white



if mouse_over() {
	with (oCursor) { sprite = sPointer_base }
	color = c_gray
	scale = lerp(scale,oscale*.9,.1)
} else {
	scale = lerp(scale,oscale,.08)
}

if mouse_check_button_pressed(mb_any)  and mouse_over() {
	color = c_dkgray
	scale = oscale*.8
	if sprite_index = sButton_new_game { room_goto(rGame)  }
	if sprite_index = sButton_continue { room_goto(rGame)  }
	if sprite_index = sButton_exit { game_end() }	
	if sprite_index = sButton_options { room_goto(rMenu_settings)  }
	if sprite_index = sButton_back { room_goto(rMenu_main)  }
	if sprite_index = sButton_fullscreen { window_set_fullscreen(!window_get_fullscreen())  }
	if sprite_index = gunny { url_open( "https://agentavis.weebly.com/"); }
}



