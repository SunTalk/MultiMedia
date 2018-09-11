int y = 0;
int check =1;

void setup() {
  size(300, 300);
  background(0,0,0);
}
void draw() {
  if(check==1){
    stroke(255);
  }
  else{
    stroke(0);
  }
  
  line(0, y, 300, y);
 
  y = y + 4;
  if(y>=300){
    if(check==1){
      background(255,255,255);
      check=0;
    }
    else{
      background(0,0,0);
      check=1;
    }
    y=0;
  }
}
