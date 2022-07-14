//Pulo do player.
if(keyboard_check_pressed(vk_space)){
	if(!place_free(x,y+1)){
		jump = true;
	}
}
if(jump){
 if(jumpFrames < jumpHeight){
    if(place_free(x,y-spd)){
	   jumpFrames+=spdJump;
	        y-=spdJump;
	 }else{
     jump=false;
	 jumpFrames = 0;
}
     }else{
	 jump=false;
	 jumpFrames = 0;
   }
}