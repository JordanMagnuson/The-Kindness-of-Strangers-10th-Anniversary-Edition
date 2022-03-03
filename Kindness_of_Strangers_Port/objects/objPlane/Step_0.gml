/// @description Insert description here
// You can write your code in this editor
if(x>3000 and !playerDropped){
global.player=instance_create_depth(0,0,0,objPlayer)
global.player.construct(x,y);
	playerDropped=true
//	global.player.x=x
	//global.player.y=y
	global.player.stunned=false
	

	camera_destroy(view_camera[0]);
	view_camera[0] = camera_create_view(0, 0, 640, 480, 0, global.player, -1, -1, room_width, room_height);

}

if(x > room_width * 1.5){
	instance_destroy();	
}

if(playerDropped){

y-=1

}
else{
y+=0.2
}