/// @description Insert description here
// You can write your code in this editor
draw_self();



if(canTalk){
draw_sprite(sDialogueAlert,0,x + 4,y-48);

if(keyboard_check_pressed(ord("E"))){
instance_create(x + 4, y - 48,oDialogueBox);
canTalk = false;
}


}