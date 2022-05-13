/// @description Insert description here
// You can write your code in this editor
#macro START_TIME  room_speed * 5
#macro DISPLAY_TIME room_speed*10
 show= true;
 currentPhotoArray= spr_photos
currentIndex=0;

 currentPhoto=noone;
 lastPhoto=noone;
/*
alarm[0]=DISPLAY_TIME;
alarm[1]=START_TIME;
*/
function start(){
	currentPhoto=instance_create_depth(0,0,0,obj_PhotoBackdrop);
	ph=instance_create_depth(0,0,0,obj_photoHelper)
	ph.sprite_index=currentPhotoArray
	ph.image_index=0;
	currentPhoto.construct(ph.sprite_index,ph.image_index);
	currentPhoto.fadeIn()
	currentIndex++;
	instance_destroy(ph);
}

function nextPhoto(){
	//show_message("next");
	//lastPhoto=currentPhoto;
	//currentPhoto.depth=200;
	//currentPhoto.instance_destroy();
	currentPhoto.fadeOut()
	currentPhoto=instance_create_depth(0,0,0,obj_PhotoBackdrop);
	ph=instance_create_depth(0,0,0,obj_photoHelper)
	ph.sprite_index=currentPhotoArray
	ph.image_index=currentIndex;
	currentPhoto.construct(ph.sprite_index,ph.image_index);
	currentPhoto.fadeIn()
	ph.image_alpha=0;
//	ph.depth=200;

	if(currentIndex < ph.image_number-1){
		currentIndex++;}
	else{
		currentIndex=0;}
	objGameController.alarm[0]=DISPLAY_TIME;
	instance_destroy(ph);
	

}