/// @description Insert description here
// You can write your code in this editor

stepReturn=false;
if(falling=true){
	y+=5
}

if(dead){
	image_alpha -= 0.1;
	stepReturn = true;

	}

else if (image_alpha < 1  ){
	image_alpha += 0.1;
}


if(stepReturn ==false){

if(x<0 || x>room_width){

	if(y>room_height/3 and !global.died and !global.airplane2.playerTrigger03){
	//	global.died=true;
		//room_goto(rmGameOver)
		//global.soundController.fadeOut();
	}
}
onground=false;
//

var lx=0

while(lx < sprite_width){
	if(place_meeting(x+lx,y+1,objMaze)){
		onground=true;
		doublejump=true;
		walljumping=0;
		
		break;}
	lx++;
}













//_speed[0]=0;
//_speed[1]=0;
acceleration[0]=0;
accelx=false;
accely=false;
if(!stunned){
	if (keyboard_check(global.keyLeft) and _speed[0] > -mMaxSpeed[0]) { acceleration[0] = -movement; accelx=true; direction = 180; }
	else if (keyboard_check(global.keyRight) and _speed[0] < mMaxSpeed[0]) { acceleration[0] = movement; accelx=true; direction = 0; }
	else{
		_speed[0]=0;}
}


if(!stunned && keyboard_check_pressed(global.keyA)){

	var jumped = false;
	if(onground){
		_speed[1]=-jump;
		jumped=true;}
	/*
	if(objMaze.coll(x-1,y,1,1) and jumped and walljumping!=3){
		_speed[1]=-jump;
		_speed[0]=mMaxSpeed[0]*2;
		walljumping=2;
		jumped=true;}
	if(objMaze.coll(x+1,y,1,1) and !jumped and walljumping!=3){
		_speed[1]=-jump;
		_speed[0]=mMaxSpeed[0];
		walljumping=1;
		jumped=true;}
		*/
	if(!onground && !jumped && doublejump){
		_speed[1]=-jump;
		doublejump=false;
		walljumping=0
	}
		
}
	grav();
	maxspeed(false,true);
	if(_speed[1]<0 and !(keyboard_check_pressed(global.keyA))){
		grav();
		grav();
	
	}
	if(!keyboard_check_pressed(global.keyA)){
		_speed[1]=0;
	}
	
	motion();
	//go();
//	grav();
}


