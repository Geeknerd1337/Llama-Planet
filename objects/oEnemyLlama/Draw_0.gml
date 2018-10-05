/// @description Insert description here
// You can write your code in this editor


draw_self();
var _cont = oCombatController;

var _hpSize = 35;
var _hPadding = 5;
var _hh = 10;
var _x1 = x + _hpSize;
var _y1 = y - sprite_height - _hPadding;
var _x2 = x - _hpSize;
var _y2 = _y1 - _hh;


hpTar = hp/maxHp * 100
hpLerp = lerp(hpLerp,hpTar,0.3);
draw_healthbar(_x1,_y1,_x2,_y2,hpLerp, c_black,c_yellow,c_yellow,0,true,true);


draw_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,true);
