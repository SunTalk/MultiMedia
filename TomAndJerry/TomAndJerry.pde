PImage cat;
PImage rat;
PImage bg;
int i_cat,j_cat,i_rat,j_rat;
int score;
void setup(){
 size(800,600);
 i_rat = int(random(50,750));
 j_rat = int(random(50,550));
 i_cat = int(random(800));
 j_cat = int(random(600));
 i_cat = j_cat = 0;
 
 cat = loadImage("tom.png");
 rat = loadImage("jerry.png");
 bg = loadImage("house.png");
 
}

void draw(){
  background(255);
  image(bg ,0,0,800,600);
  image( rat , i_rat , j_rat , 40 ,52  );
  image( cat , i_cat , j_cat , 40+score*10 ,50+score*10);
  
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
  
  if( i_cat < i_rat+10+score*2 && i_cat > i_rat-10-score*2 && j_cat < j_rat+10+score*2 && j_cat > j_rat-10-score*2 ){
    if(score<25){
      score++;
    }
    i_rat = int(random(50,750));
    j_rat = int(random(50,550));
  }

  
}
