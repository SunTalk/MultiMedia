class Apple {

	int x,y; // 60,840  
	boolean on = false;

	void display_apple(){
		if( on == true )
			ellipse(x, y, 20,20);
	}

	void start_apple(int in_x,int in_y){
		on = true;
		x = in_x;
		y = in_y;
	}


}