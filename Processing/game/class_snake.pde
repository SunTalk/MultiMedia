class Snake {

	boolean on = false;
	int path_num = 30;
	int x,y;
	char path = 'd';
	int stop = 0;
	int check_run = 0;

	void start_snake(int seat_x,int seat_y){
		on = true;
		x = seat_x;
		y = seat_y;
	}

	void turn_snake(char wasd){
		if( check_run == 0 ){
			if( wasd == 'w' && path != 's' ){
				path = wasd;
				check_run = 30;
			}
			else if( wasd == 's' && path != 'w' ){
				path = wasd;
				check_run = 30;
			}
			else if( wasd == 'a' && path != 'd' ){
				path = wasd;
				check_run = 30;
			}
			else if( wasd == 'd' && path != 'a' ){
				path = wasd;
				check_run = 30;
			}
		}
	}

	void follow_snake(int pre_x,int pre_y){
		x = pre_x;
		y = pre_y;
	}

	void stop_snake(){
		stop = 30;
	}

	void run_snake(int timeset){
		if(timeset==0){
			if( stop == 0 ){
				if(on == true){
					if( path == 'w' ){
						y = y - 30;
					}
					else if( path == 's' ){
						y = y + 30;
					}
					else if( path == 'a' ){
						x = x - 30;
					}
					else if( path == 'd' ){
						x = x + 30;
					}
				}
			}
			else{
				stop = stop - 30;
			}
			check_run = 0;
		}
	}

	void display_snake(){
		if(on==true)
			rect(x-15,y-15,30,30);
	}

}