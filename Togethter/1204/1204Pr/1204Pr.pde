import processing.serial.*;
Serial port; // Create object from Serial class
int val; // Data received from the serial port
void setup() {
	size(900, 600);
	frameRate(10);
	// Open the port that the board is connected to and use the same speed (9600 bps)
	println(Serial.list()); 
	String portName = Serial.list()[1]; 
	//where 0 is dependent on the "com" port number.
	
	port = new Serial(this, portName, 9600);
}
int one=1,two=1;
void draw() {
	if (0 < port.available()) { // If data is available,
		val = port.read(); // read it and store it in val
		println(val);
	}
	background(255); // Set background to white

	if( one < 30 && two < 30 ){
		if (val == 1 || val == 3)
			one++;

		if(val == 2 || val == 3)
			two++;
	}


	fill(0,255,0);
	ellipse(700,300,one*10,one*10);
	fill(255,0,0);
	ellipse(200,300,two*10,two*10);
	strokeWeight(2);
	if( one == 30 ){
		background(255);
		fill(0);
		textSize(80);
		text("Player One Win",200,300);
	}
	else if( two == 30 ){
		background(255);
		fill(0);
		textSize(80);
		text("Player Two Win",200,300);
	}

	if( one == 30 || two == 30 ){
		if( mousePressed == true ){
			one = 1;
			two = 1;
		}
	}

}
