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


acceleration[0]=0;

if(!stunned){
	if (keyboard_check_pressed(global.keyLeft) and hspeed > -mMaxSpeed[0]) { acceleration[0] = -movement;  direction = 180; }
	if (keyboard_check_pressed(global.keyRight) and hspeed < mMaxSpeed[0]) { acceleration[0] = movement;  direction = 0; }
	
}


if(!stunned && keyboard_check_pressed(global.keyA)){

	var jumped = false;
	if(onground){
		vspeed=-jump;
		jumped=true;}
	
	if(objMaze.coll(x-1,y,1,1) and jumped and walljumping!=3){
		vspeed=-jump;
		hspeed=mMaxSpeed[0]*2;
		walljumping=2;
		jumped=true;}
	if(objMaze.coll(x+1,y,1,1) and !jumped and walljumping!=3){
		vspeed=-jump;
		hspeed=mMaxSpeed[0];
		walljumping=1;
		jumped=true;}
	if(onground && !jumped && doublejump){
		vspeed=-jump;
		doublejump=false;
		walljumping=0;}
		
		
}
	grav();
	maxspeed(false,true);
	if(vspeed<0 and !(keyboard_checkpressed(global.keyA))){
		grav();
		grav();
	
	}
	
	
	//motion();
	go();
	grav();
}


