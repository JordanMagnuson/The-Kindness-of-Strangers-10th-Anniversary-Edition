/// @description Insert description here
// You can write your code in this editor

/*
function collS(oS,_mode, _freeze){
	if(_freeze){
	var ss=0;
	var counter=0;
	while(ss < instance_number(objStranger)){
	
		 s[ss]=instance_find(objStranger,ss)
		ss++

		var Px1=s[ss].x;
		var Py1=s[ss].y;
		var Py2=Py1-s[ss].sprite_height
		var Px2=Px1+s[ss].sprite_width

		var  a=Px1;
		var b=Py1;
		if(_mode==0){
			while(a<Px2){
				while(b<Py2){
					if(draw_getpixel(a,b)=c_black){
						s[ss].falling=false;}
					else{
						b++;}	
	
						}
				b=Py1;
				a++;
				}
		 s[ss].falling=true}
		if(s[ss].falling=true){
			counter++;}}
}
}
*/


function coll(_x, _y, _mode){

	Px1=objPlayer.x;
	Py1=objPlayer.y;
	Py2=Py1-objPlayer.sprite_height
	Px2=Px1+objPlayer.sprite_width
	
	a=Px1;
	b=Py1;
	if(_mode==0){
	while(a<Px2){
		while(b<Py2){
			if(draw_getpixel(a,b)=c_black){
				return true;}
			else{
				b++;}
		
	
		}
		b=Py1;
		a++;
}
	

return false;
	}
	
	else if (_mode==1){
		if(draw_getpixel(_x,_y)=c_black){
		return true;}
		else{
			return false;}
	
	
	}

}