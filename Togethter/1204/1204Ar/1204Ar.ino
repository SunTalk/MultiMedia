int buttonState = 0;
int buttonState_ = 0;
int lastButtonState = 0;
int lastButtonState_ = 0;
int switchPin = 4; // Switch connected to pin 4
int switchPin_= 5;
void setup() {
	pinMode(switchPin, INPUT); // Set pin 0 as an input
	Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
	int val,val_;
	buttonState = digitalRead(switchPin);
	buttonState_ = digitalRead(switchPin_);

	if (buttonState != lastButtonState) { // If switch is ON,
		if (buttonState == HIGH)
			val=1;
		else  // If the switch is not ON,
			val=0;
		Serial.write(val);
		//Serial.println(val);
	}
	lastButtonState = buttonState;
	
	if (buttonState_ != lastButtonState_) { // If switch is ON,
		if (buttonState_ == HIGH)
			val_=2;
		else  // If the switch is not ON,
			val_=0;
		Serial.write(val_);
		//Serial.println(val_);
	}
	lastButtonState_ = buttonState_;
	if(val_== 2 && val == 1)
		Serial.write(3);
	delay(100); // Wait 100 milliseconds
}