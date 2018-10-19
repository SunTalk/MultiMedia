void draw_small_snake(){
	fill(0);
	rect(100,120,450,450);

	noStroke();
	fill(102, 204, 255);
	rect(100,120,450,30);
	rect(100,120,30,450);
	rect(520,120,30,450);
	rect(100,540,450,30);

	stroke(1);
	fill(0,255,0);
	for(int i = 0 ; i < 5 ; i++ ){
		rect(snake_x[i],snake_y[i],30,30);
	}

	fill(255,0,0);
	ellipse(fruit_x,fruit_y,20,20);

	for(int i = 0 ; i < 5 ; i++ ){
		if( roop[i] == 1 ){
			snake_x[i] = snake_x[i] + 30;
			if( snake_x[i] == 490){
				snake_x[i] = 460;
				snake_y[i] = 180;
				roop[i] = 2;
			}
		}
		else if( roop[i] == 2 ){
			snake_y[i] = snake_y[i] + 30;
			if( snake_y[i] == 510 ){
				snake_x[i] = 430;
				snake_y[i] = 480;
				roop[i] = 3;
			}
			
		}
		else if( roop[i] == 3 ){
			snake_x[i] = snake_x[i] - 30;
			if( snake_x[i] == 130 ){
				snake_x[i] = 160;
				snake_y[i] = 480;
				roop[i] = 4;
			}
		}
		else if( roop[i] == 4 ) {
			snake_y[i] = snake_y[i] - 30;
			if( snake_y[i] == 150 ){
				snake_x[i] = 160;
				snake_y[i] = 180;
				roop[i] = 1;
			}
		}

	}


}