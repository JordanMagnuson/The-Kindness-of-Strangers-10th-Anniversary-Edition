/// @description Insert description here
// You can write your code in this editor

if (global.coll01)
		{
			if (currentSound != sndTranscript02 && currentSound != sndTranscript02Break && !audio_is_playing(sndTranscript01) )
				{
					//trace('collide trigger 1');
					//fader.fadeTo(0, FADE_DURATION);
					if (global.kindness)
						currentSound = sndTranscript02;
					else
					{
						currentSound = sndTranscript02Break;
				//		FP.world.add(new GlitchController);
					}
					audio_play_sound(currentSound,5,false)   
					global.coll01=false;
				}
			}
			else if (global.coll02 && currentSound != sndTranscript03 && !audio_is_playing(sndTranscript02))
			{
			//	trace('collide trigger 2');
				if (global.kindness)
				{
				//	fader.fadeTo(0, FADE_DURATION);
					currentSound = sndTranscript03;
					audio_play_sound(currentSound,5,false)   
					global.coll02=false;
				}
			}	
			else if (global.coll04 && !trigger04)
			{
			//	trace('trigger04');
				trigger04 = true;
				audio_play_sound(soundPlane,5,true); 
				global.coll04=false
	
			}	
			else if (trigger04)
			{
			//	soundPlane.pan = FP.scale(Global.player.x, Global.trigger04.x, FP.width, 1, 0);
				//soundPlane.volume = FP.scale(Global.player.x, Global.trigger04.x, FP.width, 0, 0.5);
				scale1 = room_width - global.trigger04.x
				scale2 = global.player.x/scale1;
				scale3=0+ scale2
				scale4=1 - (1* scale2)
				audio_sound_gain(soundPlane, scale3, 0);
				
				
			}
			
			//if (currentSound == sndTranscript04 && !fadeOutStarted)
			if (currentSound == sndTranscript04 && !audio_is_playing(sndTranscript04) && !fadeOutStarted)
			{
				fadeOutStarted = true;
				//FP.world.add(new FadeOut(GameOverWorld, Colors.BLACK, 6));
				var Fo=instance_create_depth(0,0,-100,objFadeOut)
				Fo.construct(2,6,0);
		//game over
	

			}