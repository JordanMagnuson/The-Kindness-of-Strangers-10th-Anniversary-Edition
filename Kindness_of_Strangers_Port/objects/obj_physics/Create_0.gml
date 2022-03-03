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

function motion(mx=true, my=true){
	if(mx){
		if(!self.motx(self,hspeed)){hspeed=0;}
		hspeed += acceleration[0];
		
	
	}
	if(my){
		if(!self.moty(self,vspeed)){vspeed=0;}
		vspeed+=acceleration[1];	
	}

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

