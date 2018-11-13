boolean gamemode = false;
boolean end = false;

void FirstValue_snake(){
	snakes[0].start_snake(105,45);
	snakes[1].start_snake(75,45);
	snakes[2].start_snake(45,45);
}

void Grow_snake(){
	snakes[count].start_snake( snakes[count-1].x , snakes[count-1].y );
	snakes[count].stop_snake();
	count++;
}

void keyPressed() {
	if( key == ' ' )
	{
		gamemode = !gamemode;

		if(end == true)
		{
			gamemode = false;
			end = false;
			setup();
		}
	}
	if(home==1 && gamemode == true){
		if( key == 'w' || key == 'a' || key == 's' || key == 'd' )
			snakes[0].turn_snake(key);
		if( key == 'W' || key == 'A' || key == 'S' || key == 'D' )
			snakes[0].turn_snake(Character.toLowerCase(key));
		if( key == CODED )
			switch (keyCode) {
				case UP:
					snakes[0].turn_snake('w');
					break;
				case DOWN:
					snakes[0].turn_snake('s');
					break;
				case LEFT:
					snakes[0].turn_snake('a');
					break;
				case RIGHT:
					snakes[0].turn_snake('d');
			}
	}
	if(home==2 && gamemode == true){
		if( key == 'a' || key == 'd' )
			player.move(key);
		if( key == 'A' || key == 'D' )
			player.move(Character.toLowerCase(key));
		if( key == CODED )
			switch (keyCode) {
				case LEFT:
					player.move('a');
					break;
				case RIGHT:
					player.move('d');
			}
	}

}

void end_game()
{
	gamemode = false;
	end = true;

	// loser will change to pic in the future
	textSize(100);
	fill(63,72,204);
	text("LOSER!!!", 250, 475);
}

void draw_score(int num,int y){
	int first,second,third,fourth;
	fourth = num%10;
	num /= 10;
	third = num%10;
	num /= 10;
	second = num%10;
	num /= 10;
	first = num%10;

	text(first,950,y);
	text(second,1000,y);
	text(third,1050,y);
	text(fourth,1100,y);
}
