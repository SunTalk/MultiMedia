
void setup(){
  size(800, 600);
  background(0, 255, 0);
  noStroke();  
}

void draw(){
  
  for(int i=0;i<4;i=i+1){
    for(int j=0;j<3;j=j+1){
      fill(255,255-20*i,20*j);
      ellipse(100+200*i,100+200*j,200,200);
    }
  }
  
  for(int i=0;i<4;i=i+1){
    for(int j=0;j<3;j=j+1){
      fill(255-20*j,20*i,255);
      ellipse((mouseX-400)/10+100+200*i,(mouseY-300)/10+100+200*j,100,100);
    }
  }

  for(int i=0;i<4;i=i+1){
    for(int j=0;j<3;j=j+1){
      fill(20*i*j,0,0);
      ellipse((mouseX-400)/8+100+200*i,(mouseY-300)/8+100+200*j,50,50);
    }
  }
  
  save("circle.jpg");
}
