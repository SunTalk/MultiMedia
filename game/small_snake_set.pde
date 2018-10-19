int[] snake_x = new int[5];
int[] snake_y = new int[5];
int[] roop = new int[5];
float fruit_x,fruit_y;

void set_small_snake() {
	snake_x[0] = 280;
	snake_x[1] = 250;
	snake_x[2] = 220;
	snake_x[3] = 190;
	snake_x[4] = 160;

	snake_y[0] = 180;
	snake_y[1] = 180;
	snake_y[2] = 180;
	snake_y[3] = 180;
	snake_y[4] = 180;

	roop[0] = 1;
	roop[1] = 1;
	roop[2] = 1;
	roop[3] = 1;
	roop[4] = 1;
	
	fruit_x = random(220,430);
	fruit_y = random(240,450);
}