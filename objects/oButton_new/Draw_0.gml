image_xscale = scale
image_yscale = scale
color = c_white;

draw_self() //draws the button

draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_font(font_button)



if(!isKeybind){
	draw_text_outlined_ext(x,y-(11*scale)+yoffset,text,color,c_black,(scale*iscale)/5,(scale*iscale)/5,0) //draw the text
} else {

	if(!applied){

		color = c_red;
		
	}else{
		
		color = c_white
	
	}
	if gettingKey { color = merge_color(c_white,c_orange,((sin(current_time/125)/2)+(.5))); }

	draw_text_outlined_ext(x,y-(11*scale)+yoffset,text + ":" + keyCodeName,color,c_black,(scale*iscale)/5,(scale*iscale)/5,0) //draw the text
	
}
//draw_text(x,y,string((sin(current_time/500)/2)+(.5)))
var updated = false;
if text = "Apply Keybinds" {
	with (oButton_new) {
		if isKeybind and (!applied){
			//instance_destroy()
			with (other) {
				alph = lerp(alph,1,.01)
				var updated = true
			}
		}
	}
	if !updated { alph = lerp(alph,0,.05) }
	_scale = (.125)+abs(sin(current_time/250)/100)
	draw_text_transformed_color(x,y-45,"WARNING: Unapplied Changes",_scale,_scale,0,c_red,c_red,c_orange,c_orange,alph)
	draw_circle_color(x,y,2,random(255),c_black,true)
}

