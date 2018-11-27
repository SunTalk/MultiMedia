const int analogInPin = A0;
const int analogInPin_2 = A1;
int A0sensor = 0;
int A1sensor = 0;
int delayValue = 0;
int speakerPin = 13;

void setup() {
	pinMode(9, OUTPUT);
	pinMode(8, OUTPUT);
	pinMode(7, OUTPUT);//king
	pinMode(6, OUTPUT);
	pinMode(5, OUTPUT);
	pinMode(4, OUTPUT);
	pinMode(speakerPin, OUTPUT);
}

int tmp = 4;

void loop() {
	//delayValue = 100;
	A1sensor = analogRead(analogInPin_2);
	A0sensor = analogRead(analogInPin);
	delayValue = map(A0sensor, 0, 1023, 100, 500);

	digitalWrite(tmp,150);
	delay(delayValue);

	if( A1sensor < 150 ){
		if( tmp == 7 ){
			for(int i = 0 ; i < 3 ; i++ ){
				tone(speakerPin, 1262);
				delay(200);
				noTone(speakerPin);
				delay(200);
			}
		}
		else
			delay(1200);

	}
	
	digitalWrite(tmp,LOW);
	delay(delayValue);
	
	tmp++;
	if( tmp == 10 )
		tmp = 4;
}
