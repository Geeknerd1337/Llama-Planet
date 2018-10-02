/// @description Insert description here
// You can write your code in this editor
draw_self();
//draw_text(x,y,"-Y : " + string (-y) + "\nX - oPLayer.x: " + string(x - oPlayer.x) + "\nAmt: " + string((x - oPlayer.x) + sprite_get_width(sprite_index)/2) + "\nT: " + string(t));


var _x = string((x - oPlayer.x) + sprite_get_width(sprite_index)/2);


var _x = (oPlayer.x) - x;
var _y = -1 * (_x/2) + (y);
_y = clamp(_y,y - sprite_get_height(sprite_index)/2,y + sprite_get_height(sprite_index)/2);

//draw_text(x,y,string(oPlayer.y - _y) + "\n" + string(x) + "\n" + string(depth) + " " + string(oPlayer.depth));



//draw_circle(oPlayer.x,_y,1,false);
//draw_circle(oPlayer.x,oPlayer.y,1,false);