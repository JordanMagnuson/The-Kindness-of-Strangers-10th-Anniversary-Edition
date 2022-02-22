/// @description Insert description here
// You can write your code in this editor
if(x>3000 and !playerDropped){
	global.player=instance_create_depth(0,0,0,objPlayer)
	playerDropped=true
	global.player.x=x
	global.player.y=y
	global.player.stunned=false


}

if(x > room_width * 1.5){
	instance_destroy()
}

if(playerDropped){

y-=1

}
else{
y+=0.2
}