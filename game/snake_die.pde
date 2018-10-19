void die_snake(){
	if((snakes[0].x < 45 || snakes[0].x > 855) || (snakes[0].y < 45 || snakes[0].y > 855)){
		end_game();
		snakes_end = true;
	}

	for(int i = 1 ; i < count ; i++ ){
		if( abs(snakes[0].x-snakes[i].x) < 15 && abs(snakes[0].y-snakes[i].y) < 15 ){
			end_game();
			snakes_end = true;
		}
	}

}