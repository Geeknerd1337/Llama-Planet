/// @desc draw_text_with_outlines
/// @arg x
/// @arg y
/// @arg string
/// @arg color
/// @arg outline_color
/// @arg xscale 
/// @arg yscale 
/// @arg angle
///draw_text_outlined(x, y, string, colour, outline_colour)

var xx = argument0;
var yy = argument1;
var str = argument2;
var xsc = argument5;
var ysc = argument6;
var ang = argument7;

draw_set_colour(argument4);
draw_text_transformed(xx-1, yy, string_hash_to_newline(str),xsc,ysc,ang);
draw_text_transformed(xx+1, yy, string_hash_to_newline(str),xsc,ysc,ang);
draw_text_transformed(xx, yy-1, string_hash_to_newline(str),xsc,ysc,ang);
draw_text_transformed(xx, yy+1, string_hash_to_newline(str),xsc,ysc,ang);
draw_set_colour(argument3);
draw_text_transformed(xx, yy, string_hash_to_newline(str),xsc,ysc,ang);
draw_set_colour(c_white);

