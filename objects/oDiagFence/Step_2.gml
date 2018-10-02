/// @description Insert description here
// You can write your code in this editor





var _x = (oPlayer.x) - x;
//_x = clamp(_x,x - sprite_get_width(sprite_index)/2,x + sprite_get_width(sprite_index)/2);
var _y = -1 * (_x/2) + (y);
_y = clamp(_y,y - sprite_get_height(sprite_index)/2,y + sprite_get_height(sprite_index)/2);

depth = oPlayer.depth + sign(oPlayer.y - _y);