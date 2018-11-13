void draw_small_car(){
	fill(0);
	rect(650,120,450,450); // 650 1070 30
	draw_small_road();
	small_car_player();
	small_car_enemy();
	if( small_time == 0 )
		small_time = 20;
}

void draw_small_road(){
	fill(255);
	small_time--;
	if( small_time == 0 ){
		for(int i = 0 ; i < 6 ; i++ ){
			small_road[i] = small_road[i] + 30;
			if( small_road[i] == 570 )
				small_road[i] = 30;
		}
	}
	for(int i = 0 ; i < 6 ; i++ ){
		if( small_road[i] > 90 && small_road[i] < 550 ){
			rect(650,small_road[i],30,30);
			rect(1070,small_road[i],30,30);
		}
		if( small_road[i]+30 > 90 && small_road[i]+30 < 550 ){
			rect(650,small_road[i]+30,30,30);
			rect(1070,small_road[i]+30,30,30);
		}
	}
}

void small_car_player(){

	if( small_time == 0 ){
		if( player_direction == 1 )
			player_head = player_head + 30;
		else
			player_head = player_head - 30;
		if( player_head == 1010 )
			player_direction = 0;
		if( player_head == 710 )
			player_direction = 1;
	}

	rect(player_head,480,30,30);
	rect(player_head,450,30,30);
	rect(player_head,510,30,30);
	rect(player_head-30,480,30,30);
	rect(player_head+30,480,30,30);
	rect(player_head-30,540,30,30);
	rect(player_head+30,540,30,30);
}

void small_car_enemy(){

	rect(enemy_head_x,enemy_head_y,30,30);
	rect(enemy_head_x,enemy_head_y-30,30,30);
	rect(enemy_head_x,enemy_head_y+30,30,30);
	rect(enemy_head_x-30,enemy_head_y,30,30);
	rect(enemy_head_x+30,enemy_head_y,30,30);
	rect(enemy_head_x-30,enemy_head_y+60,30,30);
	rect(enemy_head_x+30,enemy_head_y+60,30,30);

}