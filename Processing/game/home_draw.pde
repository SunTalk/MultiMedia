void draw_home(){

	background(63,72,204);
	fill(195);
	textSize(50);
	text("Click Picture to Enter the Game",100,650);
	text("by SunTalk && Chess",225,750);
	textSize(20);
	text("© 2018 Game-Project",450,850);
	
	draw_small_snake();
	draw_small_car();

	if( mousePressed == true && mouseButton == LEFT){
		if( mouseX > 100 && mouseX < 550 && mouseY > 120 && mouseY < 550 ){
			home = 1;
			setup();
		}
		if( mouseX > 650 && mouseX < 1100 && mouseY > 120 && mouseY < 550 ){
			home = 2;
			setup();
		}
	}
}
