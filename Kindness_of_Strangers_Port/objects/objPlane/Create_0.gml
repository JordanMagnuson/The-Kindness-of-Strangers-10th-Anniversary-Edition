/// @description Insert description here
// You can write your code in this editor
speed=5
direction = 0
//soundPlane
soundPlane=_11_plane_sound
playerDropped=false

function construct(_x,_y){

audio_play_sound(soundPlane,5,true)
image_xscale=-1
graphic=sprite_index
depth=-100
x=_x
y=_y

}