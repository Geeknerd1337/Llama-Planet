
var _name = argument[0];

for(var _i = 0; _i < ds_list_size(tagList); _i++){
	var _mp = tagList[| _i];
	if(argument[0] == _mp[? "name"]){
	
	return _i;
		
	}
	
}


return -1;