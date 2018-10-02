/// @description Insert description here
// You can write your code in this editor
if pause { exit }
depth = -y;

dhsp = 0
dvsp = 0
walking = false;
runmod = 1

if place_meeting(x,y,oSpike) { die = true }
if die = true {	
	x = checkpoint.x
	y = checkpoint.y+16
	die = false
}

new_checkpoint = instance_place(x,y,oCheckPoint)
if instance_exists(new_checkpoint) and new_checkpoint != checkpoint{
	checkpoint = new_checkpoint
	checkpoint.glow = 1
}
//if on_ground { image_blend = c_red } else { image_blend = c_white }
//if vsp = 0 { yscale = .75 xscale = 1.25 }

if keyboard_check(sprint_) { runmod *= 2 }
if keyboard_check(crouch_) { runmod *= .5 }

//if abs(vsp) > 1 { hit_play = true }
//if abs(vsp) = 0 and hit_play { hit_play = false yscale = .75 xscale = 1.25 }

if input_right { dhsp = mspd*runmod; walking = true }
if input_left { dhsp = -mspd*runmod; walking = true}
if input_down { dvsp = mspd*runmod; walking = true }
if input_up { dvsp = -mspd*runmod; walking = true}
//if keyboard_check(jump_) and (collision_line(x+(sprite_width/2)-1,y,x+(sprite_width/2)-1,y+2,oSolid,false,true) or collision_line(x-(sprite_width/2)+1,y,x-(sprite_width/2)+1,y+2,oSolid,false,true)) { yscale = 1.25 xscale = .75 vsp = -jump_speed }


//if !on_ground { vsp += global.Gravity }
//yscale = lerp(yscale,1,.1)
//xscale = lerp(xscale,1,.1)

if (abs(hsp) < .1 and abs(vsp) < .1){ image_index = 0 }

if(sign(dhsp) != 0){
xscale = sign(dhsp);	
}


hsp = lerp(hsp,dhsp,.1);
vsp = lerp(vsp,dvsp,.1)


//vsp += global.Gravity
do_collisions()



//If you're colliding with the up thing
if(place_meeting(x,y,oUpTrig)){

sprite_index = sPlayerUp;
	
}else{
sprite_index = sPlayer;
}



if walking { image_index += (.75*runmod)*.25 } else { image_speed = 0 }

do_speeds()

old_hsp = hsp
old_vsp = vsp