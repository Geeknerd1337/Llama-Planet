/// @description Insert description here
// You can write your code in this editor
x = room_width/2;
y = room_height/2;


entityDist = 70;
enetitySecondDist = 50;

entityList = ds_list_create();
enemyList = ds_list_create();

//Spawning the llamas
var _inst = instance_create(x + entityDist,y,oLlama);
ds_list_add(entityList,_inst);
var _inst = instance_create(x + entityDist + enetitySecondDist,y + enetitySecondDist,oLlama);
ds_list_add(entityList,_inst);
var _inst = instance_create(x + entityDist + enetitySecondDist,y - enetitySecondDist,oLlama);
ds_list_add(entityList,_inst);

//Spawning the enemies
var _inst = instance_create(x - entityDist,y,oEnemy);
ds_list_add(entityList,_inst);
ds_list_add(enemyList,_inst);
var _inst = instance_create(x - entityDist - enetitySecondDist,y + enetitySecondDist,oEnemy);
ds_list_add(entityList,_inst);
ds_list_add(enemyList,_inst);
var _inst = instance_create(x - entityDist - enetitySecondDist,y - enetitySecondDist,oEnemy);
ds_list_add(entityList,_inst);
ds_list_add(enemyList,_inst);


#region Sorting the list of enemies so that with the highest wary stat gets to go first
sorted = false;
while(!sorted){
	sorted = true;
	for(var _i = 0; _i < ds_list_size(entityList); _i++){
		if(_i != ds_list_size(entityList) - 1){
			if(entityList[| _i].wary < entityList[| _i + 1].wary){
				var _t = entityList[| _i];
				entityList[| _i] = entityList[| _i + 1];
				entityList[| _i + 1] = _t;
				sorted = false;
			}
		}

	}
	
}


#endregion



index = 0;


entityList[| 0].selected = true;



