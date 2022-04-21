/// @description Insert description here
// You can write your code in this editor
if(rescale=true){
//	image_xscale= 12/sprite_width;
//	image_yscale= 24/sprite_height;
		
	rescale=false;

}
if(coll=false){
	
	
	if(onground){objPlayer.image_blend=c_red}
	if(!onground){objPlayer.image_blend=c_purple}
}


	//go();
	u=0;
	d=0;
	r=0;
	l=0;
	

if(keyboard_check_pressed(ord("G"))){
	instance_create_depth((x+global.actorwidth),(y+global.actorheight),-1,Object22);
//	instance_create_depth(x+sprite_width,y,-1,Object22);
}
	
