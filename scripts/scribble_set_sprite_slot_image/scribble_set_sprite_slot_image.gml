/// @param json
/// @param sprite_slot
/// @param image_index

var _json        = argument0;
var _sprite_slot = argument1;
var _image_index = argument2;

var _sprite_slot_list = _json[? "sprite slots" ];
var _slot_map = _sprite_slot_list[| _sprite_slot ];
_slot_map[? "image" ] = _image_index;