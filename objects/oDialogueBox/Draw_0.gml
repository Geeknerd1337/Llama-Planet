/// @description Insert description here
// You can write draw_set_font(font_pixel);your code in this editor

draw_self();
draw_set_font(font_pixel);
var _txtScl = 0.6//0.5 * sin(current_time/2000) + 0.5;


var _x1 = x - 48;
var _y1 = y - 104;
var _x2 = _x1 + (string_width(name) * _txtScl) + textPadding ;
var _y2 = _y1 + 15;

NineSliceBox_Stretched(sDialogueOverheadName,_x1,_y1,_x2,_y2);


draw_set_color(c_white);


var numLines = 5;
var lineT = 1;
var linePadding = 11;
var lineWidth = 138;
draw_set_color(make_color_rgb(43,46,66));
for(var _i = 0; _i < numLines; _i++){

draw_line_width(x - 51,(y - 75) + (_i * linePadding),x - 51 + lineWidth,(y - 75) + (_i * linePadding),lineT);
	
}

draw_set_color(c_white);
draw_text_ext_transformed(x-50,y - 86,str,11,sprite_get_width(sprite_index) - dPadding * 2,1,1,0);

if(pos <= string_length(message[msg])){

str += string_copy(message[msg],pos,strSpd);

pos += strSpd;


}
wait++;
if(keyboard_check_pressed(ord("E")) and wait > 10){
	str = "";
	pos = 1;
	
	msg++;
	if(msg >= array_length_1d(message)){
	instance_destroy();	
	}
	
}


draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_set_color(textColor);

draw_text_transformed((_x1 + _x2)/2,(_y1 + _y2)/2,name,_txtScl,_txtScl,0);
draw_set_color(c_white);
draw_set_halign(-1);
draw_set_valign(-1);


//draw_sprite(sDialogueBoxLines,0,mouse_x,mouse_y);


//draw_text(x,y + 64, "X: " + string(mouse_x - x) + " Y: " + string(mouse_y - y)); 
