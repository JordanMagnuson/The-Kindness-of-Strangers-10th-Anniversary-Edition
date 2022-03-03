/// @description Insert description here
// You can write your code in this editor
falling=true
alarm[1]=room_speed*5
image_speed=0;
movement=1;
jump=8;
direction=0;
onground=false;
walljumping=0;
doublejump=false;
dead=false;
stunned=false;
start = noone;
rescale=false;

function construct(_x,_y){
	mGravity=0.4;
	mMaxSpeedx=4;
	mMaxSpeedy=8;
	mFriction = [0.5,0.5];
	depth=-2;
	//setHitbox(12,24,-10,-8);
	image_xscale= 12/sprite_width;
	image_yscale= 24/sprite_height;
	
	_type= "Player";
	
	x=_x;
	y=_y;
}