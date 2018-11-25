/// @function     add_tag(name, description, effective, weakness, buff_modifier, debuff_modifier)
/// @description  Adds a tag to the tag list.
/// @argument     name            
/// @argument     description     
/// @argument     effective       
/// @argument     weakness        
/// @argument     buff_modifier   
/// @argument     debuff_modifier 

var _name = argument[0];
var _description = argument[1];
var _effective = argument[2];
var _weakness = argument[3];
var _buff_modifier = argument[4];
var _debuff_modifier = argument[5];
var _mp = ds_map_create();


_mp[? "name"] = _name;
_mp[? "description"] = _description;
_mp[? "effective"] = _effective;
_mp[? "weakness"] = _weakness;
_mp[? "buff"] = _buff_modifier;
_mp[? "debuff"] = _debuff_modifier;

ds_list_add(tagList,_mp);