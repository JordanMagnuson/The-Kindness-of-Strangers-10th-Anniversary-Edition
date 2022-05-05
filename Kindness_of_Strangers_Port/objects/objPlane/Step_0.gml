/// @description Insert description here
// You can write your code in this editor
if(x>2000 and !playerDropped){
global.player=instance_create_depth(0,0,0,objPlayer)
if(global.kindness){global.SC=instance_create_depth(0,0,0,objSoundController)}
global.SC.construct();
global.player.construct(x,y);
	playerDropped=true
//	global.player.x=x
	//global.player.y=y
	global.player.stunned=false
	if(!global.kindness){
		alarm[0]=10;
}

	camera_destroy(view_camera[0]);
	view_camera[0] = camera_create_view(0, 0, 640, 480, 0, global.player, -1, -1, room_width, room_height);

}

if(x > room_width * 1.5){
	instance_destroy();	
}

if(playerDropped){

y-=1
//soundPlane.pan = FP.scale(x, 3000, FP.width * 1.5, 0, 1);
//soundPlane.volume = FP.scale(x, 3000, FP.width * 1.5, 0.5, 0);	
scale1 = room_width*1.5-3000;
scale2 = x/scale1;
scale3=0.5 - (0.5*scale2)
scale4=0+ scale2
audio_sound_gain(soundPlane, scale3, 0);
}
else{
y+=0.2
}