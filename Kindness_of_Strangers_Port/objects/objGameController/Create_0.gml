/// @description Insert description here
// You can write your code in this editor
Globals()
ColorsInit()



global.airplane = instance_create_depth(0,0,0,objPlane)
global.airplane.construct(0,0)
global.mt=instance_create_depth(0,0,10,obj_maze_top);
global.mb=instance_create_depth(0,global.mt.sprite_height,10,obj_maze_bottom);
room_height=global.mt.sprite_height+global.mb.sprite_height;
room_width=global.mt.sprite_width;
global.PC=instance_create_depth(0,0,0,obj_PhotoController);
alarm[0]=room_speed*10
alarm[1]=room_speed*8
camera_destroy(view_camera[0]);
view_camera[0] = camera_create_view(0, 0, 640, 480, 0, global.airplane, -1, -1, room_width, -1);