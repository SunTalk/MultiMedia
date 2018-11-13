PImage bullet; 
Bullet[] bullets;
int  numbullets=50;
int currentbullets=0;


void setup(){
	size(800, 600);
	bullet = loadImage("bullet.png");
	smooth();
	bullets = new Bullet[numbullets];
	for (int i = 0; i < numbullets; i++) {
		bullets[i] = new Bullet();
	}
}

void draw(){
	background(0);
	for (int i = 0; i < numbullets; i++) {
		bullets[i].up();
		image(bullet, bullets[i].x, bullets[i].y,100,100);
	}
}

void mousePressed() {
	bullets[currentbullets].start(mouseY);
	currentbullets++;
	if (currentbullets >= numbullets) {
		currentbullets = 0;
	}
}

class Bullet{
	float x;
	float y;

	void start(float mosy){
		x = 0.0;
		y = mosy-50;
	}

	void up(){
		x = x+10;
	}
}