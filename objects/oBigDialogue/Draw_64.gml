/// @description Insert description here
// You can write your code in this editor


var _window_x = window_mouse_get_x();
var _window_y = window_mouse_get_y();


var _x1 = 0 + (window_get_width() - (dialogueWidth * ratio))/2;
var _y1 = window_get_height() - dialogueHeight * ratio;
var _x2 = _x1 + dialogueWidth * ratio;
var _y2 = _y1 + dialogueHeight * ratio;



draw_sprite_ext(sBanner,0,(_x1 + _x2)/2,(_y1 + _y2)/2,ratio,ratio,0,c_white,1);
NineSliceBox_Stretched(sDialogueNineSlice, _x1, _y1, _x2, _y2);
scribble_draw( json,   _window_x, _window_y );