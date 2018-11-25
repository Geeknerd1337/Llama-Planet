/// @description Insert description here
// You can write your code in this editor


spook = 0;
maxSpook = 20;

wary = irandom_range(0,20);

selected = false;
player = false;


var _p = instance_create(x,y,oHealthbar);
_p.creator = id;