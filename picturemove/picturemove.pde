PImage img;
int i,j;

void setup()
{
size(1000, 1000);
i=0;
j=0;
img = loadImage("elpsycongroo.jpg");

}

void draw()
{
  background(255);

  image( img , i , j );
  
  if (keyPressed == true) {
    if (key == 'a'){
      i=(i-20)%1000;
    }
    if (key == 'd'){
      i=(i+20)%1000;
    }
    if (key == 'w'){
      j=(j-20)%1000;
    }
    if (key == 's'){
      j=(j+20)%1000;
    }
  }
  
  if(i<0){
    i=1000;
  }
  if(j<0){
    j=1000;
  }
  
}
