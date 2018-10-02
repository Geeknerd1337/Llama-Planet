if pause { exit }
image_speed = 0
image_index += .25

if mode = 1 {
	if hsp = 0 { hsp = mspd }
	if collision_line(x,y-(sprite_height/2),x-1-(sprite_width/2),y-(sprite_height/2),oSolid,false,true) { hsp = -hsp }
	if collision_line(x,y-(sprite_height/2),x+1+(sprite_width/2),y-(sprite_height/2),oSolid,false,true) { hsp = -hsp }
}

vsp += global.Gravity
do_collisions()








do_speeds()