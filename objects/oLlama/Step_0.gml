/// @description Insert description here
// You can write your code in this editor



if(selected and wait > 0){

image_blend = c_red;
//global.focus = id;
if(!madeOptions and !instance_exists(oOptions)){
	
	var _p = instance_create(x,y,oOptions);
	_p.list = mySkills;
	_p.creator = id;
	madeOptions = true;	
	
}

if(selecting){

	for(var _i = 0; _i < ds_list_size(oCombat.enemyList); _i++){

	oCombat.enemyList[| _i].combatSelected = false;
	
	}

	oCombat.enemyList[| index].combatSelected = true;
	
	if(keyboard_check_pressed(vk_down)){
	index++;
	if(index > ds_list_size(oCombat.enemyList) - 1){
	index = 0;	
	}
	}
	
	if(keyboard_check_pressed(vk_enter)){
		madeOptions = false;
		selecting = false;
		wait = 0;
		oCombat.enemyList[| index].spook += d;
		selected = false;
		with(oCombat){
		entityList[| index].selected = false;
		index++;
		if(index > ds_list_size(entityList) - 1){
		index = 0;
		}
		entityList[| index].selected = true;	
		}
	}
	
}

}else{
image_blend = c_white;	
}

wait++;