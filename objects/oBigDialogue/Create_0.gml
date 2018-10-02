/// @description Insert description here
// You can write your code in this editor



dialogueWidth = 674/2;
dialogueHeight = 104;


ratio = window_get_width()/768;


message[0] = "This is the first test massage";
message[1] = "This is the second text message";
char_pos = 0;


#region Setting up My Scribble
var _string = message[0];
json = scribble_create( _string, 674, "font_pixel_2", fa_center, make_colour_hsv( 35, 140, 210 ) );
scribble_set_box_alignment( json, fa_left, fa_top );
//Set how the text should be aligned relative to the draw coordinate
//Here, we're setting the alignment so that the middle/centre of the box is at the draw coordinate
scribble_set_box_alignment( json, fa_center, fa_middle );

//Set some properties for dyanmic text effects
scribble_set_shake( json, 4 );
scribble_set_wave( json, 4 );
scribble_set_rainbow( json, 0.4 );

//Set how our hyperlinks should look. Fade in/out rates are deltas per frame (0 < rate <= 1)
//By default, there is a maximum of 4 hyperlinks
scribble_set_hyperlink( json, c_lime, 0.2, 0.2 );

//Set properties for sprite slots. Sprite slots are used to animate sprites
//By default, there is a maximum of 4 sprite slots
scribble_set_sprite_slot_speed( json, 0, 0.1 );
scribble_set_sprite_slot_image( json, 1, 1   );
scribble_set_sprite_slot_speed( json, 1, 0.2 );
#endregion
