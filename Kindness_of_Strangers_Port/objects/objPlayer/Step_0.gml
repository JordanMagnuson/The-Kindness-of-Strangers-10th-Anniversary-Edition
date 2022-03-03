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
		global.died=true;
		//room_goto(rmGameOver)
		//global.soundController.fadeOut();
	
	
	}






}
onground=false;
//

accelerationx=0;
if(!stunned){
	if (keyboard_check_pressed(global.keyLeft) and hspeed > -mMaxSpeedx) { accelerationx = - movement; hspeed += accelerationx; direction = 180; }
	if (keyboard_check_pressed(global.keyRight) and hspeed < mMaxSpeedx) { accelerationx = movement; hspeed += accelerationx; direction = 0; }
	

}





}
