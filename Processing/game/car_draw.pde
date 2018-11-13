void draw_car()
{
	// scoreborad
	fill(0);
	rect(0, 0, 900, 900);

	fill(0);
	rect(900,100,300,500);
	fill(255);
	textSize(60);
	text("SCORE", 940, 150);
	draw_score(score,250);
	text("HIGH",960,350);
	draw_score(high_car,450);

	_time--;

	// circle check
	if(road[5]._y[0] >= 900)
	{
		int tmp = -180;

		for(int i=0; i<6; i++)
		{
			road[i].init(tmp);
			tmp += 180;
		}
	}

	// display
	for(int i=0; i<6; i++)
		road[i].display();

	player.display();

	for(int i=0; i<2; i++)
	{
		if(enemy[i]._y[0] >= 900)
		{
			score += 10;
			enemy[i].init((int)random(2, 13)*60, (int)random(-60,-240));
		}

		if(_time == 0 && gamemode == true)
			enemy[i].enemy_mov();

		enemy[i].display();
	}

	// edge check
	if(player._x[1] <= 0 || player._x[3] >= 840)
		end_game();

	// hit check
	for(int i=0; i<7; i++)
		for(int j=0; j<7; j++)
			for(int k=0; k<2; k++)
				if(player._x[i] == enemy[k]._x[j] && player._y[i] == enemy[k]._y[j])
					end_game();

	// time clock reset
	if(_time == 0){
		if(score>=200)
			_time = 5;
		else if(score>=150)
			_time = 10;
		else if(score>=100)
			_time = 15;
		else
			_time = 20;
	}

	if( score > high_car )
		high_car = score;

	// pause
	if(gamemode == false && end == false )
	{
		fill(63,72,204);
		textSize(60);
		text("PAUSE", 360, 480);
	}

	// to home page
	if( mousePressed == true && mouseButton == LEFT ){
		if( mouseX > 950 && mouseX < 1150 && mouseY > 700 && mouseY < 800 ){
			home = 0;
			setup();
		}
	}
}
