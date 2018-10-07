PImage rank;
PImage teemo;
PImage victory;
PImage bg;

int i_rank,j_rank;
int[] i_teemo=new int[50];
int[] j_teemo=new int[50];
int[] life=new int[50];
int score,k;

void setup(){
	size(640,455);
	for(k=0;k<50;k++){
		i_teemo[k] = int(random(10,600));
		j_teemo[k] = int(random(10,410));
		life[k]=1;
	}

	i_rank = int(random(600));
	j_rank = int(random(410));

	bg = loadImage("ground.jpeg");
	rank = loadImage("0.png");
	teemo = loadImage("teemo.png");
	victory = loadImage("victory.png");
}

void draw(){

	image( bg , 0 , 0 );

	for(k=0;k<50;k++){
		if(life[k]==1)
			image( teemo , i_teemo[k] , j_teemo[k] , 31 ,35  );
	}
	
	if(score==10)
		rank = loadImage("10.png");
	if(score==20)
		rank = loadImage("20.png");
	if(score==30)
		rank = loadImage("30.png");
	if(score==40)
		rank = loadImage("40.png");
	if(score==45)
		rank = loadImage("45.png");
	if(score==50)
		rank = loadImage("50.png");
	
	image( rank , i_rank , j_rank , 100 ,80);
	

	textSize(50);
	fill(0,0,255);
	text(score,225,50);
	fill(255,255,255);
	text("vs",300,50);
	fill(134,0,179);
	text("0",375,50);
	
	if (keyPressed == true) {
		if (key == 'a'){
			i_rank=(i_rank-5)%645;
		}
		if (key == 'd'){
			i_rank=(i_rank+5)%645;
		}
		if (key == 'w'){
			j_rank=(j_rank-5)%455;
		}
		if (key == 's'){
			j_rank=(j_rank+5)%455;
		}
	}
	if(i_rank<0){
		i_rank=645;
	}
	if(j_rank<0){
		j_rank=455;
	}
	
	for(k=0;k<50;k++){
		if( i_rank < i_teemo[k]+30 && i_rank > i_teemo[k]-30 && j_rank < j_teemo[k]+30 && j_rank > j_teemo[k]-30 && life[k]==1){
			 life[k]=0;
			 score++;
			
		}
	}
	if(score==50){
		image(victory,0,0,640,526);
	}

	if(score==0){
		save("HW04_start.jpg");
	}
	if(score==50){
		save("HW04_win.jpg");
	}

	
}
