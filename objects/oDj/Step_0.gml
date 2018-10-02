if global.debug { visible = true } else { visible = false }

if room = rInit { pause = false room_goto_next() }
if room = rMenu_main or room = rMenu_settings { pause = false }
if room != rMenu_main and room != rMenu_settings and !(oConsole.console_status) {
	if keyboard_check_pressed(pause_button) { pause = !pause; instance_create(0,0,oPause)}
}

if pause {
	if keyboard_check(vk_escape) {
		esctimer ++ 
	} else { esctimer = 0 }
	if esctimer > room_speed/2 {
		room_goto(rMenu_main)
		esctimer = 0
		pause = false
	}
	
}

//input handleing
if !(oConsole.console_status) and (room != rMenu_main) and (room != rMenu_settings) { 
	input_up = keyboard_check(uk_)
	input_left = keyboard_check(lk_)
	input_down = keyboard_check(dk_)
	input_right = keyboard_check(rk_)
} else {
	input_up = false
	input_left =  false
	input_down =  false
	input_right =  false
}


//if(keyboard_check_pressed(rk_)){
//	room_goto_next();
//}