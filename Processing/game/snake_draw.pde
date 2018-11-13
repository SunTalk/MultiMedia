void draw_snake(){
	
	background(0);
	noStroke();
	fill(102, 204, 255);//(30,30),(870,30),(870,870),(30,870)
	rect(0,0,900,30);
	rect(0,0,30,900);
	rect(870,0,30,900);
	rect(0,870,900,30);
	// back & frame

	fill(255);
	textSize(60);
	text("SCORE", 940, 150);
	draw_score(score,250);
	text("HIGH",960,350);
	draw_score(high_snake,450);
	// score
	fill(195);
	rect(950,700,200,100);
	textSize(50);
	fill(0);
	text("HOME",980,770);
	//home

	stroke(1);
	if( apples.on == false ){
		new_apple();
	}

	die_snake();
	snakes_time--;

	for(int i = count-1 ; i >= 0 ; i-- ){
		
		noStroke();
		fill(255,0,0);
		apples.display_apple();
		stroke(1);
		fill(0,255,0);
		snakes[i].display_snake();

	}

	if( snakes_end == true){
		textSize(100);
		fill(63,72,204);
		text("LOSER!!!", 250, 475);
	}

	if(gamemode == false && end == false )
	{
		textSize(60);
		fill(63,72,204);
		text("PAUSE", 360, 480);
	}// pause

	if( gamemode == true && snakes_time == 0 ){
		for(int i = count-1 ; i > 0 ; i-- ){
			snakes[i].follow_snake(snakes[i-1].x,snakes[i-1].y);
		}
		snakes[0].run_snake(snakes_time);
	}

	if( snakes_time == 0 ){
		if(score >= 100 )
			snakes_time = 5;
		else
			snakes_time = 10;
	}

	if( Math.abs(apples.x - snakes[1].x) < 20 && Math.abs(apples.y - snakes[1].y) < 20 ){
		eat();
	}

	if( score > high_snake )
		high_snake = score;

	if( mousePressed == true && mouseButton == LEFT ){
		if( mouseX > 950 && mouseX < 1150 && mouseY > 700 && mouseY < 800 ){
			home = 0;
			setup();
		}
	}



}
