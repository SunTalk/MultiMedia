Snake[] snakes;
Apple apples;
int num = 800;
int count = 4;
int score = 0;
int home = 0;
int high_snake = 0;
int high_car = 0;
PFont font;

void setup(){

	font = createFont("Minecraftia.ttf",32);
	textFont(font);

	size(1200,900);
	smooth();

	if( home == 0 ){
		set_home();
	}
	else if( home == 1 ){
		set_snake();
	}
	else if( home == 2 ){
		set_car();
	}
}

void draw(){

	if( home == 0 ){
		draw_home();
	}
	else if( home == 1 ){
		draw_snake();
	}
	else if( home == 2 ){
		draw_car();
	}
}
