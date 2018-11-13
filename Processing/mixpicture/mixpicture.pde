int front;
int back;

void setup(){
 size(600,800);
 background(0);
 frameRate(10);
 
 textSize(20);
 
 fill(255);
 rect(500,0,100,100);
 fill(0);
 text("Pre",510,50);
 
 fill(255);
 rect(500,100,100,100);
 fill(0);
 text("Next",510,150);
 
 fill(255);
 rect(500,300,100,100);
 fill(0);
 text("random",510,350);
 
 fill(255);
 rect(500,400,100,100);
 fill(0);
 text("save",510,450);
 
 fill(255);
 rect(500,600,100,100);
 fill(0);
 text("Pre",510,650);
 
 fill(255);
 rect(500,700,100,100);
 fill(0);
 text("Next",510,750);
 
 
 
front = int(random(1, 20)); // Select the front card
back = int(random(1, 20)); // Select the back card
PImage imgFront = loadImage(front + "t.jpg");
PImage imgBack = loadImage(back + "b.jpg");
image(imgFront, 0, 0);
image(imgBack, 0, 400);
 
}

void draw(){
  
  if(mousePressed==true){
    if(mouseX>500){
      if(mouseY<100){
        front = front-1;
        if(front==1){
           front=20; 
        }
        PImage imgFront = loadImage(front + "t.jpg");
        image(imgFront, 0, 0);
      }
      else if(mouseY<200){
        front = front+1;
        if(front==21){
           front=1; 
        }
        PImage imgFront = loadImage(front + "t.jpg");
        image(imgFront, 0, 0);
      }
      else if(mouseY>300 && mouseY<400){
        front = int(random(1, 20)); // Select the front card
        back = int(random(1, 20)); // Select the back card
        PImage imgFront = loadImage(front + "t.jpg");
        PImage imgBack = loadImage(back + "b.jpg");
        image(imgFront, 0, 0);
        image(imgBack, 0, 400);
      }
      else if(mouseY>400 && mouseY<500){
        save("HW03.jpg");
      }
      else if(mouseY>600 && mouseY<700){
        back = back+1;
        if(back==21){
           back=1; 
        }
        PImage imgBack = loadImage(back + "b.jpg");
        image(imgBack, 0, 400);
      }
      else if(mouseY<800){
        back = back+1;
        if(back==21){
           back=1; 
        }
        PImage imgBack = loadImage(back + "b.jpg");
        image(imgBack, 0, 400);
        
      }
    }
  }
}
