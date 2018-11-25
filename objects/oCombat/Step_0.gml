/// @description Insert description here
// You can write your code in this editor
global.focus = id;


if(entityList[| index].object_index == oEnemy){

entityList[| index].selected = false;
index++;
if(index > ds_list_size(entityList) - 1){
index = 0;
}
entityList[| index].selected = true;

}