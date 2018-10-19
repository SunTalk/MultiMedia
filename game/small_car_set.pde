int small_time;
int[] small_road = new int[6];
int player_head;
int player_direction;
int enemy_head_x;
int enemy_head_y;

void set_small_car(){
	small_time = 20;
	small_road[0] = 60;
	small_road[1] = 150;
	small_road[2] = 240;
	small_road[3] = 330;
	small_road[4] = 420;
	small_road[5] = 510;
	player_head = 710;
	enemy_head_x = int( random(710,1010) );
	enemy_head_y = int( random(150,360) );
	player_direction = 1;
}