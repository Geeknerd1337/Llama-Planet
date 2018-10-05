/// @function     newSkill(damage, cooldown, name, description, requiredLevel, id)
/// @description  adds a new skill to the skill map
/// @argument     damage        
/// @argument     cooldown      
/// @argument     name          
/// @argument     description   
/// @argument     requiredLevel 
/// @argument     id            

var _damage = argument[0];
var _cooldown = argument[1];
var _name = argument[2];
var _description = argument[3];
var _requiredLevel = argument[4];
var _id = argument[5];


var _map = ds_map_create();


_map[? "damage"] = _damage;
_map[? "cooldown"] = _cooldown;
_map[? "name"] = _name;
_map[? "description"] = _description;
_map[? "requiredLevel"] = _requiredLevel;
_map[? "id"] = _id;

return _map;