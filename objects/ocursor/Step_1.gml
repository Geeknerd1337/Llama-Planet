sprite = sCursor_base
timer ++


x = window_mouse_get_x()
y = window_mouse_get_y()
spd = point_distance(xprevious,yprevious,x,y)
dir = point_direction(xprevious,yprevious,x,y)

if mouse_check_button_pressed( mb_any ) { clicks ++ heat += .5 }
if heat > 0 { heat *= .998 }
if heat < 5 { fire = false }
if heat > 5 {
	//if timer mod round(5*(heat/30)) = 1{
	if random(1-clamp((heat/30),0,1)) < .01{
		instance_create(x,y,oMouse_smoke)
	}
} //smoke
if fire {
	if timer mod 10 {
		instance_create(x,y,oMouse_smoke)	
	}
}
if heat > 30 { fire = true}