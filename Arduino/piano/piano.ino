int speakerPin = 9;
int buttonPin = 2;

char notes[] = "gCDDEEDEEDEGECCgaEDEDCDE"; // a space represents a rest
int length = sizeof(notes); // the number of notes
int beats[] = { 2,2,2,2,2,4,2,2,4,2,2,2,2,4,2,2,6,2,2,2,2,2,2,8};
int tempo = 300;

void playTone(int tone, int duration) {
	for (long i = 0; i < duration * 1000L; i += tone * 2) {
		digitalWrite(speakerPin, HIGH);
		delayMicroseconds(tone);
		digitalWrite(speakerPin, LOW);
		delayMicroseconds(tone);
	}
}

void playNote(char note, int duration) {
	//              1   2     3    4    5    6    7   8    9   10  11  12  13   14
	char names[] = { 'c', 'd', 'e', 'f', 'g', 'a', 'b', 'C','D' ,'E','F','G','A','B' };
	int tones[] = {1047,1175,1319,1397,1568,1760,1976,523,587,659,698,784,880,988};

	// play the tone corresponding to the note name
	for (int i = 0; i < 14; i++) {
		if (names[i] == note) {
			playTone(tones[i], duration);
		}
	}
}

void setup() {
	pinMode(buttonPin, INPUT);
	pinMode(speakerPin, OUTPUT);
}

void loop() {

	int buttonState = digitalRead(buttonPin);

	if (buttonState == HIGH) {

		for (int i = 0; i <length; i++) {
			if (notes[i] == ' ') {
				delay(beats[i] * tempo); // rest
			} else {
				playNote(notes[i], beats[i] * tempo);
			}
			// pause between notes
			delay(tempo / 10); 
		}

	}
}
