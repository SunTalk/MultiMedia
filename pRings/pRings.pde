Ring[] rings;
int numRings = 50;
int currentRing = 0;

void setup() {
	size(600, 600);
	smooth();
	rings = new Ring[numRings];
	for (int i = 0; i < numRings; i++) {
		rings[i] = new Ring();
	}
}

void draw() {
	background(0);
	for (int i = 0; i < numRings; i++) {
		rings[i].grow();
		rings[i].display();
	}
}

void mousePressed() {
	rings[currentRing].start(mouseX, mouseY);
	currentRing++;
	if (currentRing >= numRings) {
		currentRing = 0;
	}
}

class Ring {
	float x, y;
	float diameter;
	boolean on = false;
	float r,g,b;

	void start(float xpos, float ypos) {
		x = xpos;
		y = ypos;
		on = true;
		diameter = 1;
		r=random(255);
		g=random(255);
		b=random(255);
	}

	void grow() {
		if (on == true) {
			diameter += 0.5;
			if (diameter > 400) {
				on = false;
			}
		}
	}

	void display() {
		if (on == true) {
			noFill();
			strokeWeight(4);
			stroke(r,g,b);
			ellipse(x, y, diameter, diameter);
		}
	}


}
