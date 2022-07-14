//Código para fazer funcionar movimentação apenas se em jogo.
if(obj_game.state == "in_game"){
	//Movimentação do player.
	if(keyboard_check(vk_right) && ! keyboard_check_pressed(vk_left) && place_free(x+spd,y)){
		x+=spd;	
		sprite_index = spr_player_walk;
		image_xscale = 1;
}
	if(keyboard_check(vk_left) && ! keyboard_check_pressed(vk_right) && place_free(x-spd,y)){
		x-=spd;
		sprite_index = spr_player_walk;
		image_xscale = -1;
}
	if(keyboard_check(vk_nokey)){
		sprite_index = spr_player;
		spd = 1.5;
}
	if(keyboard_check(vk_lshift)){
		spd=3;
		sprite_index = spr_player_run;
	}
}
	if(keyboard_check(vk_escape)){
		
	}