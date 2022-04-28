/// @description Insert description here
// You can write your code in this editor
 _speed=[0,0];
 _direction=0;
 acceleration=[0,0];
 mGravity=0.2;
 solidd= "Solid"
 mFriction=[0.5,0.5];
 slopeHeight =1;
 mMaxspeed= [3,8];
 moty=noone;
 motx=true;
 accelx=false;
 accely=false;
 coll=false
function construct(_x,_y){
x=_x;
y=_y;
typing=solidd

}
function grav(){
	
	if(y<obj_maze_bottom.y){
	a=0
	b=0
	while(a<=mGravity){
		if(place_meeting(x,y+1+a,obj_maze_top)){
				break;}	
		a++;}
	y+=a;
	
	
	}
	
	else
	{
	
	a=0
	b=0
	while(a<=mGravity){
		if(place_meeting(x,y+1+a,obj_maze_bottom)){
				break;}	
		a++;}
	y+=a;
	
	
	
	
	
	}
	
	//show_message(string(mGravity))
	
	_speed[1]+=mGravity
}
function motion(mx=true, my=true, spx, spy){
	//if(keyboard_check_pressed(global.keyA)){show_message("Help:" + string(spy))};
	if(mx){
		if(!motxx(self,spx)){  acceleration[0]=0;_speed[0]=0;}
		
	//	hspeed += acceleration[0];
		//hspeed += 1;
	//	if(accelx=true){show_message("human " + string(_speed[0]));}
		_speed[0]+=acceleration[0];
		
		if(keyboard_check(ord("P"))){show_message(string(_speed[0]))}
	//	x+=_speed[0];
		}
	if(my){
		if(!(moty(self,spy))){_speed[1]=0;acceleration[1]=[0];}
		//vspeed+=acceleration[1]
		
	//	vspeed+=1
		//_speed[1]+=acceleration[1]
	//	y+=_speed[1];
		
		
	}
	//if(hspeed!=0){show_message("thisx"+string(acceleration[0])+"F"+string(hspeed)+"thisy"+string(acceleration[1]));}
}

function friction(_x=true, _y=true){
	if(x){
		if(_speed[0] > 0){
			_speed[0]-=mFriction[0];
			if(_speed[0]<0){_speed[0]=0;} }
		if(_speed[0] < 0){
			_speed[0]+=mFriction[0];
			if(_speed[0]>0){_speed[0]=0;}}
		
		
	}
}

function maxspeed(_x=true, _y=true){
	if ( _x ) {
				if ( (_speed[0]) > mMaxspeed[0] )
				{
					var _xsign=1;
					if( (direction>=0 and direction <=90) or (direction>=270 and direction<=360) ){
						_xsign=1;
					}
					else{
						_xsign=-1;
					}
					_speed[0] = mMaxspeed[0] * _xsign
				
				}
			}
			
			if ( _y ) {
				if ( (_speed[1]) > mMaxspeed[1] )
				{
						var _ysign=1;
					if( (direction>=180 and direction <=270) or (direction>=270 and direction<=360) ){
						_ysign=1;
					}
					else{
						_ysign=-1;
					}
					
				
					_speed[1] = mMaxspeed[1] * _ysign;

					
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
		if(!   e.place_meeting(  e.x,e.y+1,objMaze        )    /* objMaze.coll(e.x,e.y+1,1)*/  )                  {
			below=false;}
		s=0;
		while(s<=slopeHeight){
			var f=1;
			if(_spdx<0){
				f=-1;
				}
			if(! e.place_meeting(e.x + f, e.y,objPlayer)      /*objMaze.coll(e.x + spdx*f ,e.y-s,1)*/    ){
				//if()
			//	e.y-=s;
				e.x+=f//*f;
				moved=true;
				break;
			
			}
			s++;
		
		}
		if(below and !e.place_meeting(e.x,e.y+1,objMaze)    /*objMaze.coll(e.x,e.y+1,1)*/   ){ e.y+=1; }
		if(!moved){return false;}
		i++;
	}


//	e.x+=f*i



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
		else{
		
			return false;}
		i++;
	}

	return true;

}

function motxx(e, _spdx){
	i=0;
	var leftx=e.x;
	var rightx=e.x;
	var boolrx=true;
	var boollx=true;
	var f=1
		if(_spdx<0){
		var spdx=_spdx*-1;
		 f=-1;
	}	
	else {var spdx=_spdx;}
	while(i < spdx){
	
		
		if(!  e.place_meeting(rightx+f,e.y/**f*/,objMaze)      /*objMaze.coll(e.x,e.y + spdy*f,1)*/){
			//if(objMaze.coll()){}
			rightx+=f//*f
			}		
		else{
			if(keyboard_check(global.keyRight)){
			//	show_message("Presto");
				}
			boolrx= false;}
		i++;
	}
	i=0;
	while(i < spdx){
	
	
		if(!  e.place_meeting(leftx+f,e.y/**f*/,objMaze)      /*objMaze.coll(e.x,e.y + spdy*f,1)*/){
			//if(objMaze.coll()){}
			leftx+=f//*f
			}		
		else{
			if(keyboard_check(global.keyLeft)){
//show_message("Presto")
				;}
			boollx = false;}
		i++;
	}
	i=0;
	var copyleft =leftx;
	var copyright= rightx;
	if(boollx==false and boolrx==false){
		//show_message("gooma");	
		
		while(i<spdx){
			if(!e.place_meeting(copyleft-i,e.y/**f*/,objMaze)  ){
				copyleft-=i;
				boollx=true;
				break;
			}
			i++;
		}
		i=0;
		while(i<spdx){
			if(!e.place_meeting(copyright+i,e.y/**f*/,objMaze)  ){
				copyright+=i;
				boolrx=true;
				break;
			}
			i++;
		}
		leftx=copyleft;
		rightx=copyright;
		
		
	}
	
	if(f==1){
		if(boolrx==true){
			e.x=rightx;}
		return boolrx;	
		
	}
	if(f==-1){
		if(boollx==true){
			e.x=leftx;}
		return boollx;
	}
	

}