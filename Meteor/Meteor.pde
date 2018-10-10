PImage bg;
PImage star;
Meteors[] meteor;
int num = 50;
int current = 0;



void setup(){
	size(1280,900);
	bg = loadImage("background.png");
	star = loadImage("star.png");
	smooth();
	meteor = new Meteors[num];
	for(int i = 0 ; i < num ; i++ ){
		meteor[i] = new Meteors();
	}

}

void draw(){
	image(bg, 0, 0,1280,900);
	for(int i = 0 ; i < num ; i++ ){
		meteor[i].grow();
		meteor[i].display();
	}
	// image(star, 500, 0,100,100);
	// ellipse(500, 300, 15,15);
}

void mousePressed(){
	meteor[current].start(mouseX);
	current++;
	if (current >= num) {
		current = 0;
	}
}

class Meteors {
	float x;
	float y;
	boolean on = false;
	float row,column;

	void start(float mosx){
		x = mosx;
		y = -100.0;
		on = true;
		column = 286;
		row = 195;
	}

	void grow(){
		if(on == true){
			x = x - 10;
			y = y + 30;
			column = column - (286/20);
			row = row - (195/20);
			if( column < 0 || row < 0 ){
				on = false;
			}
		}	
	}

	void display(){
		if(on == true){
			image(star,x,y,column,row);
		}
	}

}