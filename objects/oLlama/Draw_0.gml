/// @description Insert description here
// You can write your code in this editor

var _cont = oCombatController;


draw_self();


draw_text(x,y + 64,string(x - mouse_x) + "," + string(y - mouse_y));


var _hpSize = 35;
var _hPadding = 5;
var _hh = 10;
var _x1 = x + _hpSize;
var _y1 = y - sprite_height - _hPadding;
var _x2 = x - _hpSize;
var _y2 = _y1 - _hh;

draw_healthbar(_x1,_y1,_x2,_y2,hp/maxHp * 100, c_black,c_yellow,c_yellow,0,true,true);




#region Drawing the body skill

draw_set_color(c_black);

var _skillX = x + 98;
var _skillY = y - 46 + (4 * sin(current_time/3000));

var _lineX = x;
var _lineY = y + 6 - sprite_height/2;

draw_line_width(_skillX,_skillY,_lineX,_lineY,3);

if(skill[0] != noone){
var _skill = skill[0];
var _skillWidth = 50;
var _skillText = _skill[? "name"];
var _skillHeight = 20;

var _x1 = _skillX - _skillWidth;
var _y1 = _skillY - _skillHeight;
var _x2 = _skillX + _skillWidth;
var _y2 = _skillY + _skillHeight;

draw_set_color(c_white);

if(point_in_rectangle(mouse_x,mouse_y,_x1,_y1,_x2,_y2) and !reloading[0] and _cont.targetedLlama != noone){
	draw_set_color(c_gray);
	
	if(mouse_check_button_pressed(mb_left)){
	_cont.selectedSkill	= _skill;
	reloading[0] = true;
	with(_cont.targetedLlama){
		hp += oCombatController.selectedSkill[? "damage"];
		oCombatController.selectedSkill = noone;
		
	}
	
	}
	
}

if(reloading[0]){
timer[0]++;
if(timer[0] > _skill[? "cooldown"]){
timer[0] = 0;
reloading[0] = false;
}
draw_set_color(c_red);
}

draw_rectangle(_x1,_y1,_x2,_y2,false);

draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_set_color(c_black);
draw_text(_skillX,_skillY,_skillText);
draw_set_halign(-1);
draw_set_valign(-1);





}


#endregion