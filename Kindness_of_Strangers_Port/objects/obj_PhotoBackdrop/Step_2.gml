/// @description Insert description here
// You can write your code in this editor


if(global.help==false){
	instance_destroy();}
if(!fadepause){
	
	if(fin=true){
		image_alpha +=  0.5 *  (1/((FADE_IN_DURATION)))}

	if(fout=true){
		image_alpha -=      (1/(FADE_OUT_DURATION))}
}
else{
	if(fin=true){
		alarm[1]=alarm[1]+1;}

	if(fout=true){
		alarm[2]=alarm[2]+1;}

}