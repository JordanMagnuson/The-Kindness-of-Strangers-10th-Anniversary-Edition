/// @description Insert description here
// You can write your code in this editor
 _speed=[0,0];
 acceleration=[0,0];
 mGravity=0.2;
 solidd= "Solid"
 mFriction=[0.5,0.5];
 slopeHeight =1;
 mMaxspeed= [3,8];
 moty=noone;
 motx=true;
function construct(_x,_y){
x=_x;
y=_y;
typing=solidd

}
function grav(){
	
	a=0
	b=0
	while(a<=mGravity){
		if(place_meeting(x,y+1+a,objMaze)){
				break;}	
		a++;}
	y+=a;
	//show_message(string(mGravity))
}
function motion(mx=true, my=true){
	if(mx){
		if(!self.motx(self,hspeed)){hspeed=0;}
		
		hspeed += acceleration[0];}
	if(my){
		if(!self.moty(self,vspeed)){vspeed=0;}
		vspeed+=acceleration[1];	
	}
	if(hspeed!=0){show_message("thisx"+string(acceleration[0])+"F"+string(hspeed)+"thisy"+string(acceleration[1]));}
}

function friction(_x=true, _y=true){
	if(x){
		if(hspeed > 0){
			hspeed-=mFriction[0];
			if(hspeed<0){hspeed=0;} }
		if(hspeed < 0){
			hspeed+=mFriction[0];
			if(hspeed>0){hspeed=0;}}
		
		
	}
}

function maxspeed(_x=true, _y=true){
	if ( _x ) {
				if ( (hspeed) > mMaxspeed[0] )
				{
					var _xsign=1;
					if( (direction>=0 and direction <=90) or (direction>=270 and direction<=360) ){
						_xsign=1;
					}
					else{
						_xsign=-1;
					}
					hspeed = mMaxspeed[0] * _xsign
				}
			}
			
			if ( _y ) {
				if ( (vspeed) > mMaxspeed[1] )
				{
						var _ysign=1;
					if( (direction>=180 and direction <=270) or (direction>=270 and direction<=360) ){
						_ysign=1;
					}
					else{
						_ysign=-1;
					}
					
				
					vspeed = mMaxspeed[1] * _ysign;

					
				}
			}


}

function motx(e,_spdx){
	i=0;
	if(_spdx<0){
		var spdx=_spdx*-1;
	}	
	else {var spdx=_spdx;}
	while(i<spdx){
		var moved=false;
		var below=true;
		if(!   e.place_meeting(e.x,e.y+24,objMaze)    /* objMaze.coll(e.x,e.y+1,1)*/  )                  {
			below=false;}
		s=0;
		while(s<=slopeHeight){
			var f=1;
			if(e.direction>=90 and e.direction <=270){
			//	f=-1;
				}
			if(! e.place_meeting(e.x +_spdx/**f*/, e.y-s,objPlayer)      /*objMaze.coll(e.x + spdx*f ,e.y-s,1)*/    ){
				//if()
				e.y-=s;
				e.x+=_spdx//*f;
				moved=true;
				break;
			
			}
			s++;
		
		}
		if(below and !e.place_meeting(e.x,e.y+24,objMaze)    /*objMaze.coll(e.x,e.y+1,1)*/   ){ e.y+=1; }
		if(!moved){return false;}
		i++;
	}










	return true;
}


function moty(e, _spdy){
	i=0;
		if(_spdy<0){
		var spdy=_spdy*-1;
	}	
	else {var spdy=_spdy;}
	while(i < spdy){
		if(e.direction<=180 and e.direction>=0){
			var f=-1;}
		else{  f=1;}
		if(!  e.place_meeting(e.x,e.y+_spdy/**f*/,objMaze)      /*objMaze.coll(e.x,e.y + spdy*f,1)*/){
			//if(objMaze.coll()){}
			e.y+=_spdy//*f
		}
		else{return false;}
		i++;
	}

	return true;

}