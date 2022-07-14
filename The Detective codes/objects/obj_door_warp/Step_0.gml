//scr_warp();
if(place_meeting(x,y, obj_player)){
	if keyboard_check_pressed(vk_up){
	//if keyboard_check_pressed(ord("A")){	
		if(obj_game.alpha < 0){
		obj_game.state = "in_transition_enter";
		}else{ 
		room_goto(targetRoom);
		obj_player.x = targetX;
	    obj_player.y = targetY;}
		}
		//}
	}