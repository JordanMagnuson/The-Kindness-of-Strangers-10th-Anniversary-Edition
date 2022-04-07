/// @description Insert description here
// You can write your code in this editor
if(global.coll03   and !playerTrigger03){

playerTrigger03=true
global.player.stunned=true
global.player.hspeed=0;
//sound plane.loop
}


if(playerTrigger03){
global.airplane2.x-=5
global.airplane2.y-=0.7
//show_message("coming:   "  + string(x) + "  " +  string(y))
//sound




}

if(!global.kindness){
	if(x<room_width/2 && !fadeOutStarted){
		fadeOutStarted=true
		//game over
	}


}







