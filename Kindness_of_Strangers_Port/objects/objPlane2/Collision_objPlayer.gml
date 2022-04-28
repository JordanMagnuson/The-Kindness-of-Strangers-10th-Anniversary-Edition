/// @description Insert description here
// You can write your code in this editor

if(playerTrigger03){
global.player.x=room_width
global.player.y=10
//camera_destroy(view_camera[0]);
//view_camera[0] = camera_create_view(0, 0, 640, 480, 0, global.airplane2, -1, -1, room_width, -1);}
camera_set_view_target(view_camera[0],global.airplane2)


}