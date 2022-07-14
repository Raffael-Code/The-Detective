switch(state){
	case "in_game":
	{
		draw_set_alpha(1);
		break;
	}
	case "in_transition_enter":
	{
		alpha -= 0.035;
		if(alpha <= 0){
			alpha = 0;
			state = "in_transition_exit";
		}
		draw_set_alpha(alpha);
		break;
	}
	case "in_transition_exit":
	{
		alpha += 0.035;
		if(alpha >= 1){
			alpha = 1;
			state = "in_game";
		}
		draw_set_alpha(alpha);
		break;
	}
}