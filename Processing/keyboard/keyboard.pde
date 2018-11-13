Word[] words; // Declare the array
int numwords = 1000;
int currentword = 0;

void setup() {
	size(600, 600);
	smooth();
	words = new Word[numwords];
	for (int i = 0; i < numwords; i++) {
		words[i] = new Word();
	}
}

void draw() {
	background(0);
	for (int i = 0; i < numwords; i++) {
		words[i].grow();
		words[i].display();
	}
}

void keyPressed() {
	words[currentword].start(key);
	currentword++;
	if (currentword >= numwords) {
		currentword = 0;
	}
}

class Word {
	char alphbat;
	float x,y;
	float diameter;
	boolean on = false;
	float r,g,b;

	void start(char alph ) {
		alphbat = alph;
		on = true;
		diameter = 10;
		x=random(600);
		y=random(600);
		r=random(255);
		g=random(255);
		b=random(255);
	}

	void grow() {
		if (on == true) {
			diameter += 0.5;
			if (diameter > 200) {
				on = false;
			}
		}
	}

	void display() {
		if (on == true) {
			noFill();
			textSize(diameter);
			fill(r,g,b);
			text(alphbat,x,y);
		}
	}


}

