/// @description Insert description here
// You can write your code in this editor
Globals()
ColorsInit()
LevelData()
#macro SCALE 2


function loadlevel(){
	
	//ds=ds_map_create();
	var level_data=json_decode(global.json_level_data)
		
//	var key = ds_map_find_first(level_data);

	var level = ds_map_find_value(level_data, "level")
	//var level = level_data[? " "];
	var level_width = ds_map_find_value(level, "width")
	var level_height = ds_map_find_value(level, "height")
	var actors = ds_map_find_value(level, "actors")
	var PR = ds_map_find_value(actors, "person_right")
	var PL = ds_map_find_value(actors, "person_left")
	var PU = ds_map_find_value(actors, "person_up")
	var PD = ds_map_find_value(actors, "person_down")
	var Maze = ds_map_find_value(level, "maze")
	var Mazesize = ds_map_find_value(Maze, "maze")
	mx=real(Mazesize[? "_x"])*SCALE
	my=real(Mazesize[? "_y"])*SCALE
	global.mt=instance_create_depth(mx,my,10,obj_maze_top);
	global.mb=instance_create_depth(mx,my+global.mt.sprite_height +160,10,obj_maze_bottom);
//	show_message(level_width)
	room_width=real(level_width)*SCALE
	room_height=real(level_height)*SCALE
	o=0;
	while(o<real((PR[| 0][? "_len"]))){
		var currR= PR[| o]
		_x=real(currR[? "_x"]) * SCALE -10
		_y=real(currR[? "_y"]) * SCALE -4
		oS= instance_create_depth(_x,_y, -1, objStrangerRight);
		oS =  oS.construct(_x,_y);
		o++;
	}
	o=0;
	while(o<real((PD[| 0][? "_len"]))){
		var currD= PD[| o]
		_x=real(currD[? "_x"]) * SCALE -10 
		_y=real(currD[? "_y"]) * SCALE -4 
		oS= instance_create_depth(_x,_y, -1, objStrangerDown);
		oS =  oS.construct(_x,_y);
		o++;
	}
	o=0;
	while(o<real((PU[| 0][? "_len"]))){
		var currU= PU[| o]
		_x=real(currU[? "_x"]) * SCALE -10
		_y=real(currU[? "_y"]) * SCALE -4
		oS= instance_create_depth(_x,_y, -1, objStrangerUp);
		oS =  oS.construct(_x,_y);
		o++;
	}
	o=0;
	while(o<real((PL[| 0][? "_len"]))){
		var currL= PL[| o]
		_x=real(currL[? "_x"]) * SCALE -10
		_y=real(currL[? "_y"]) * SCALE -4
		oS= instance_create_depth(_x,_y, -1, objStrangerLeft);
		oS =  oS.construct(_x,_y);
		o++;
	}
	








}
loadlevel()
global.airplane = instance_create_depth(0,0,0,objPlane)
global.airplane.construct(0,0)

//room_height=global.mt.sprite_height+global.mb.sprite_height+320
//room_width=global.mt.sprite_width;
global.PC=instance_create_depth(0,0,0,obj_PhotoController);
alarm[0]=room_speed*10
alarm[1]=room_speed*8
camera_destroy(view_camera[0]);
view_camera[0] = camera_create_view(0, 0, 640, 480, 0, global.airplane, -1, -1, room_width, -1);

