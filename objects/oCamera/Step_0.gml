
if instance_exists(oPlayer) { global.focus = oPlayer }

if instance_exists(global.focus) { mode = 2 target = global.focus }
mouse_lerp_mag = 0;
if room = rMenu_keybinds { mode = 0 } 
if mode = 1 {
	//setup other movement related stuff
	rspd = 3 //regular speed 
	if keyboard_check(vk_shift) { rspd *= 2 }
	if keyboard_check(vk_control) { rspd *= .5 }
	
	if keyboard_check(vk_up) { tary -= rspd } 
	if keyboard_check(vk_down) { tary += rspd } 
	if keyboard_check(vk_left) { tarx -= rspd } 
	if keyboard_check(vk_right) { tarx += rspd }	
	/*
	if input_up or keyboard_check(vk_up) { tary -= rspd } 
	if input_down or keyboard_check(vk_down) { tary += rspd } 
	if input_left or keyboard_check(vk_left) { tarx -= rspd } 
	if input_right or keyboard_check(vk_right) { tarx += rspd }
	*/
	//}
}

if mode = 2 {
	if instance_exists(target) {
		mouse_lerp_mag = .1;
		tarx = target.x
		tary = target.y
	} else {
		mode = 1
	}
}

var ofset = 0;
if screenshake {
	ofset = random_range(-weight,weight)
}

if !staticcam {
	x = lerp(lerp(x,tarx,.25) + ofset,mouse_x,mouse_lerp_mag)
	y = lerp(lerp(y,tary,.25) + ofset,mouse_y,mouse_lerp_mag)
}

//Get target view size. size is halved so the view will focus around its center
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;


//Update the view position
camera_set_view_pos(view_camera[0], x - vpos_w, y - vpos_h);

dis = 600 * clamp(zoom_level/2,.75,1)
