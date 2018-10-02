draw_sprite_ext(sprite,spd,window_mouse_get_x(),window_mouse_get_y(),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
frame += 1 / 2.5

if fire {
	fsprite = sNothing
	heatalpha = lerp(heatalpha,heat/30,.1)
	darkness *= .999
	
} else {
	heatalpha = lerp(heatalpha,0,.1)	
}

if sprite = sCursor_base { fsprite = sCursor_fire }
if sprite = sPointer_base { fsprite = sPointer_fire }
draw_sprite_ext(fsprite,frame,x,y,image_xscale,image_yscale,image_angle,c_white,heatalpha)

image_blend = make_color_hsv(0,0,clamp(darkness,50,255))
//draw_text(window_mouse_get_x(),window_mouse_get_y(),string(heat))
