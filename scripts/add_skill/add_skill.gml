/// @function     add_skill(name, description, base_damage, tags)
/// @description  Adds a skill to the skills list
/// @argument     name        
/// @argument     description 
/// @argument     base_damage 
/// @argument     tags        

var _name = argument[0];
var _description = argument[1];
var _base_damage = argument[2];
var _tags = argument[3];
var _cost = argument[4];
var _mp = ds_map_create();

_mp[? "name"] = _name;
_mp[? "description"] = _description;
_mp[? "damage"] = _base_damage;
_mp[? "tags"] = _tags;
_mp[? "cost"] = _cost;

ds_list_add(skillList,_mp);