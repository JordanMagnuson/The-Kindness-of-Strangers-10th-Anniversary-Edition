/// @description Insert description here
// You can write your code in this editor
 FADE_DURATION = 4 *room_speed
		
currentSound=noone
fader=noone
		
trigger04 = false;
fadeOutStarted= false;

sndTranscript01=_5_transcript_part01_wav
sndTranscript02=_4_transcript_part02_wav
sndTranscript02Break=_3_transcript_part02_breakdown_wav
sndTranscript03=_2_transcript_part03_wav
sndTranscript04=_1_transcript_part04_wav
soundPlane=_11_plane_sound


function construct(){
	currentSound=sndTranscript01
	//fader = new SfxFader(currentSound, fadeComplete);
	//addTween(fader);
	audio_play_sound(currentSound,5,false)
	
	
}


 function hitPlane2()
{
	audio_stop_sound(soundPlane)
	if(audio_is_playing(currentSound)){
		audio_stop_sound(currentSound)}
	trigger04 = false;
	//fader.fadeTo(0, FADE_DURATION);
		if (global.kindness)
			{
				currentSound = sndTranscript04;
				audio_play_sound(currentSound,5,false)
			}
		}
/*
 function fadeComplete()
		{
			fader = new SfxFader(currentSound, fadeComplete);
			addTween(fader);
		}
		
 function fadeOut()
		{
			fader = new SfxFader(currentSound);
			addTween(fader);
			fader.fadeTo(0, 6  * FP.assignedFrameRate);
		}	