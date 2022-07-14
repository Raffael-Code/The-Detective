//Gravidade do player.
if(jump == false){
	if(place_free(x,y+spdFall)){
		y+=spdFall;
		spdFall +=grvt;
		if(spdFall > maxSpdFall){
			spdFall = maxSpdFall;
		}
	}else{
		spdFall = 2;
		while(place_free(x,y+1)){
		y++;
		}
	}
}