void new_apple(){
	apples.start_apple( int(random(1,28)*30+15) , int(random(1,28)*30+15) );
	while(true){
		for(int i = 1 ; i < count ; i++ ){
			if( apples.x == snakes[i].x && apples.y == snakes[i].y ){
				apples.start_apple( int(random(1,28)*30+15) , int(random(1,28)*30+15) );
				continue;
			}
		}
		break;
	}
	apples.on = true;
}

void eat(){
	apples.on = false;
	Grow_snake();
	score = score+10;
}
