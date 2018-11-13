void setup() {
	pinMode(13, OUTPUT);
	pinMode(12, OUTPUT);
	pinMode(11, OUTPUT);
	pinMode(10, OUTPUT);
	pinMode(9, OUTPUT);
}


void loop() {
	
	for(int i = 0 ; i < 3 ; i++ ){
		for(int j = 9 ; j <= 13 ; j++ ){
			digitalWrite(j,HIGH);
		}
		delay(500);
		for(int j = 9 ; j <= 13 ; j++ ){
			digitalWrite(j,LOW);
		}
		delay(500);
	}

	for(int i = 0 ; i < 3 ; i++ ){
		for(int j = 13 ; j >= 9 ; j-- ){
			digitalWrite(j,HIGH);
			delay(500);
		}
		for(int j = 9 ; j <= 13 ; j++ ){
			digitalWrite(j,LOW);
			delay(500);
		}
	}

	for(int i = 0 ; i < 3 ; i++ ){
		for(int j = 13 ; j >= 9 ; j-- ){
			digitalWrite(j,HIGH);
			delay(500);
			digitalWrite(j,LOW);
		}
		for(int j = 9 ; j <= 13 ; j++){
			digitalWrite(j,HIGH);
			delay(500);
			digitalWrite(j,LOW);
		}
	}

}
