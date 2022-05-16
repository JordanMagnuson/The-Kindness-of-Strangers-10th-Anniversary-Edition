/// @description Insert description here
// You can write your code in this editor
event_inherited();
 movement=1
 jump =8
 d = 0
 destruct=true;
 onground=false;
 helped=false;
 ignore=false;
 start = noone;
#macro X_DISTANCE_TO_HELP 100
#macro Y_DISTANCE_TO_HELP 10
 showTalkBubble=false;
 poweredUp=false;
 imgBubble=spr_talk_bubble
 imgArrow=spr_up;
 flipped=false
alarm[0]=1
falling=false;
function construct(_x,_y){
	speed=0;
	image_speed=0;
	x=_x;
	y=_y;
	depth=-1;
	sprite_index=spr_stranger
	start=[_x,_y];
	mGravity=0.4;
	mMaxspeed=[4,4];
	mFriction=[0.5,0.5];
	_type="Stranger";
	r=random(1);
	if(r<=0.5){
	direction=180;}
	else{
	direction=0;}
	faceDirection();
//	var iB= instance_create_depth(0,0,0,obj_photoHelper)
//	iB.sprite_index=spr_talk_bubble
//	iB.image_blend=global.BG_COLOR;
//	imgBubble= instance_create_depth(0,0,0,obj_photoHelper)
//	imgBubble.sprite_index=spr_talk_bubble
//	imgBubble.image_blend=global.BG_COLOR;
//	imgBubble.image_alpha=0;
	//imgBubble=iB;
//	instance_destroy(iB);

	
	
	construct2(_x,_y)
}

function checkHelp(){
	if(instance_exists(objPlayer)){
		if(keyboard_check_pressed(vk_control) or(((y-global.player.y)<=Y_DISTANCE_TO_HELP and (y-global.player.y)>=0) or ((global.player.y-y)<=Y_DISTANCE_TO_HELP and (global.player.y-y) >=0))){
			if(keyboard_check_pressed(vk_control) or (((x-global.player.x ) <= X_DISTANCE_TO_HELP and (x-global.player.x)>=0) or ((global.player.x-x)<=X_DISTANCE_TO_HELP and (global.player.x-x) >=0)) ){
				showTalkBubble=true;
				if(x>global.player.x){
					direction = 180}
				else{direction=0;}
		
			}
			else{
				showTalkBubble=false;}
		}
		else{
			showTalkBubble=false;}			
}
}



function render(){
if((showTalkBubble and helped==false) or ignore=true){
	helped=true;
	oB= instance_create_depth(x,y-10,-1,obj_photoHelper);
	oA= instance_create_depth(x+3,y-8,-3,obj_photoHelper);
	
	//oB.sprite_index=imgBubble.sprite_index
	oB.sprite_index=spr_talk_bubble
	//oB.x=imgBx
	//oB.y=imgBy
	//oA.sprite_index=imgArrow.sprite_index
	oA.sprite_index=imgArrow
//	oA.x=imgAx
//	oA.y=imgAy
	
	ignore=false
//	 oB.image_alpha=0;
//	oA.image_alpha=0;
//	instance_destroy(imgBubble)
}

else if(!showTalkBubble  and destruct=true){
	if(helped){
	
		
		instance_destroy(oB);
		instance_destroy(oA);	
		helped=false;}

}


}

function updateTalkBubble(){

	
	if(direction==0){
	//	imgBubble.flipped=false;
		//imgBubble.x=sprite_width+imgBubble.sprite_width;
		imgBx=sprite_width+14
		flipped=false
	}
	else{
		//imgBubble.flipped=true;
		//imgBubble.x=-5;
		flipped=true;
		imgBx=-5;
	
	}
	
	//imgBubble.y=-5;
	imgBy=-5;
	//imgArrow.x=imgBubble.x+1;
	imgAx=imgBx+1
	//imgArrow.y=imgBubble.y+1;
	imgAy=imgBy+1
	self.render();


}	


function faceDirection(){
	if(direction==0){
		image_index=8
	
	}
	else{
		image_index=0
	
	
	}



}
	
	
	

