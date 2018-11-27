const int analogInPin = A0;  // Analog input pin that the potentiometer is attached to
const int analogOutPin = 13; // Analog output pin that the LED is attached to
const int speakerOutPin = 7;

int sensorValue = 0;        // value read from the pot
int outputValue = 0;        // value output to the PWM (analog out)

void setup() {
	// initialize serial communications at 9600 bps:
	Serial.begin(9600);
}

void loop() {
	// read the analog in value:
	sensorValue = analogRead(analogInPin);
	// map it to the range of the analog out:
	outputValue = map(sensorValue, 0, 1023, 0, 255);
	// change the analog out value:
	if( sensorValue > 550 ){
		//speaker
		digitalWrite(speakerOutPin, HIGH);
		delayMicroseconds(1915);
	}
	else if( sensorValue < 150 ){
		analogWrite(analogOutPin, 196);
	}
	else{
		analogWrite(analogOutPin, 0);
		digitalWrite(speakerOutPin, LOW);
		delayMicroseconds(1915);
	}

	// print the results to the Serial Monitor:
	Serial.print("sensor = ");
	Serial.print(sensorValue);
	Serial.print("\t output = ");
	Serial.println(outputValue);

	// wait 2 milliseconds before the next loop for the analog-to-digital
	// converter to settle after the last reading:
	delay(2);
}