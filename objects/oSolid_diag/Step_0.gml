/// @description Insert description here
// You can write your code in this editor
wait --
if wait <= 0 and !c {
	var count = 0;
	var d = 8;
	nUp = place_meeting(x,y-d,object_index);
	nDown = place_meeting(x,y+d,object_index);
	nRight = place_meeting(x+d,y,object_index);
	nLeft = place_meeting(x-d,y,object_index);
    
	if(nUp) count += 1;
	if(nRight) count += 2;
	if(nDown) count += 4;
	if(nLeft) count += 8;
	image_index = count;
	
	
	c = true
}