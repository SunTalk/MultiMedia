PImage img;
int i;

void setup()
{
size(1000, 500);
i=0;
img = loadImage("elpsycongroo.jpg");

}
int check=5;
int k=0;
void draw()
{
  background(255);

  image( img , i , 120 , k , (k*265)/545 );
  
  k = k + check;
  i = i + check;
  
  if(i>455 || i<0){
    check=check*(-1);
  }

}
