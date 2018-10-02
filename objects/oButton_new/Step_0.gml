image_blend = c_white
//Mock Create event;
if(c){
	if(isKeybind){
	if(text = "Right"){keyCodeName = string_keycheck(rk_)}
	if(text = "Left"){keyCodeName = string_keycheck(lk_)}
	if(text = "Up"){keyCodeName = string_keycheck(uk_)}
	if(text = "Down"){keyCodeName = string_keycheck(dk_)}
	if(text = "Jump"){keyCodeName = string_keycheck(jump_)}
	if(text = "Shoot"){keyCodeName = string_keycheck(shoot_)}
	if(text = "Use"){keyCodeName = string_keycheck(use_)}
	if(text = "Pause_"){keyCodeName = string_keycheck(pause_button)}
	if(text = "Sprint"){keyCodeName = string_keycheck(sprint_)}
	if(text = "Crouch"){keyCodeName = string_keycheck(crouch_)}
	if(text = "Inventory"){keyCodeName = string_keycheck(inventory_)}
}

c = false;
	
}
//if !oControl.canload { if text = "Resume" { image_blend = c_dkgray exit } }

//if text = "Continue" { iscale = .75 yoffset = 3 }
if text = "Continue" { color = c_gray image_blend = merge_color(merge_color(c_blue,c_aqua,.75),c_dkgray,.6) exit; }

if mouse_over() {
	with (oCursor) { sprite = sPointer_base }
	scale = lerp(scale,1,.1)	
	colorlerp = lerp(colorlerp,1,.1)
	if mouse_check_button_pressed(mb_any) {
		scale = .8
		if text = "New Game" { room_goto(rGame)  }
		if text = "Continue" { }
		if text = "Quit" { game_end() }
		if text = "Options" { room_goto(rMenu_settings) }
		if text = "Key Binds" { room_goto(rMenu_keybinds) }
		if text = "Toggle Fullscreen" { window_set_fullscreen(!window_get_fullscreen()) }
		if text = "Back" { room_goto(dest) }
		if(isKeybind){
			if(!gettingKey){
				
				gettingKey = true;
				
			}
		
		
			
		}
		if text = "Apply Keybinds" { keyboard_save(); keyboard_load() with(oButton_new){applied = true} scr_goto_controls(); game_restart()}
		if text = "Default Keybinds" { keybinds_init(); keyboard_save() keyboard_load() with(oButton_new){c = true} with(oButton_new){applied = true}}
	}
} else {
	colorlerp = lerp(colorlerp,0,.1)
	scale = lerp(scale,1.05,.1)	
}
color = merge_color(c_white,oncol,colorlerp)
image_blend = merge_color(merge_color(c_blue,c_aqua,.75),c_aqua,colorlerp/2)



if(gettingKey){
	
	if(keyboard_check_pressed(vk_anykey)){
		if text = "Right"{ rk_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Left"{ lk_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Up"{ uk_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Down"{ dk_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Jump"{ jump_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Shoot"{ shoot_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Use"{ use_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Pause_"{ pause_button = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Sprint"{ sprint_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Crouch"{ crouch_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		if text = "Inventory"{ inventory_ = keyboard_key; keyCodeName = string_keycheck(keyboard_key);}
		applied = false;
		gettingKey = false;
	}

	
}

//keyCodeName = keyboard_key;
