PImage cat;
PImage rat;
PImage bg;
int i_cat,j_cat;
int[] i_rat=new int[50];
int[] j_rat=new int[50];
int[] life=new int[50];
int score,k;
void setup(){
 size(800,600);
 for(k=0;k<50;k++){
   i_rat[k] = int(random(50,750));
   j_rat[k] = int(random(50,550));
   life[k]=1;
 }
 i_cat = int(random(800));
 j_cat = int(random(600));
 
 cat = loadImage("tom.png");
 rat = loadImage("jerry.png");
 
}

void draw(){
  background(255);
  
  for(k=0;k<50;k++){
    if(life[k]==1)
      image( rat , i_rat[k] , j_rat[k] , 40 ,52  );
  }
  image( cat , i_cat , j_cat , 80 ,100);
  
  fill(255,0,0);
  textSize(50);
  text("score: "+score,30,50);
  
  if (keyPressed == true) {
    if (key == 'a'){
      i_cat=(i_cat-5)%800;
    }
    if (key == 'd'){
      i_cat=(i_cat+5)%800;
    }
    if (key == 'w'){
      j_cat=(j_cat-5)%600;
    }
    if (key == 's'){
      j_cat=(j_cat+5)%600;
    }
  }
  if(i_cat<0){
    i_cat=800;
  }
  if(j_cat<0){
    j_cat=600;
  }
  
  for(k=0;k<50;k++){
    if( i_cat < i_rat[k]+30 && i_cat > i_rat[k]-30 && j_cat < j_rat[k]+30 && j_cat > j_rat[k]-30 && life[k]==1){
       life[k]=0;
       score++;
      
    }
  }
  if(score==50){
    textSize(150);
        text("Victory",100,300);
  }
  
}
