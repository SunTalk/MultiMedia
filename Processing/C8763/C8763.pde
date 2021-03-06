void ground(){ 
  strokeWeight(3);
  fill(192,192,192);
  quad(-1,450,-1,601,801,601,801,500);
}

void black_sword(){
  line(600,150,700,400);
  line(640,308,680,292);
}

void body(){
  fill(255,255,255);
  ellipse(600,500,350,100);
  bezier(425,500,425,200,770,300,720,465);
}

void face(){
  stroke(3);
  ellipse(530,380,40,70);
  noStroke();
  rect(505,335,70,45);
  stroke(3);
  line(510,380,550,380);
  fill(0,0,0);
  ellipse(505,360,5,5);
  ellipse(555,360,5,5);
}

void blue_sword(){
  stroke(0,255,255);
  line(600,450,350,400);
  line(554,420,546,460);
}

void word_c(){
  stroke(0,0,0);
  strokeWeight(10);
  fill(255,255,255);
  ellipse(100,200,80,80);
  noStroke();
  quad(80,180,120,220,220,120,180,80);
}

void word_8(){
  stroke(10);
  ellipse(170,110,60,60);
  ellipse(215,155,60,60);
}

void word_7(){
  line(280,50,350,50);
  line(315,150,350,50);
}

void word_6(){
  ellipse(200,350,60,60);
  line(170,350,200,250);
}

void word_3(){
  ellipse(350,250,60,60);
  ellipse(350,310,60,60);
  noStroke();
  rect(300,250,50,60);
}

void setup(){
  size(800,600);
  background(255,255,255);
  
  ground();
  black_sword();
  body();
  face();
  blue_sword();
  word_c();
  word_8();
  word_7();
  word_6();
  word_3();
  
  save("C8763.jpg");
}
