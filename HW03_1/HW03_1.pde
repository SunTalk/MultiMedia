void setup() {
size(500, 400);
strokeWeight(3);
background(255,255,255);

fill(255);
rect(50,0,400,600);
ellipse(250,400,150,150);


fill(255, 173, 51);
rect(0,0,50,50);
fill(102, 61, 0);
rect(0,50,50,50);
fill(0,0,255);
rect(0,100,50,50);
fill(0,255,255);
rect(0,150,50,50);
fill(0);
rect(0,200,50,50);

textSize(15);

fill(255);
rect(450,0,50,50);
fill(0);
text("erase",455,45);

fill(255);
rect(450,50,50,50);
fill(0);
text("clear",455,95);

fill(255);
rect(450,100,50,50);
fill(0);
ellipse(475,125,3,3);

fill(255);
rect(450,150,50,50);
fill(0);
ellipse(475,175,8,8);


fill(255);
rect(450,200,50,50);
fill(0);
text("save",455,245);

smooth();

}



void draw() {

  
  if((mousePressed==true) && (mouseButton==LEFT)){
    if(mouseX<50){
     if(mouseY<50){
       stroke(255, 173, 51);
     }
     else if(mouseY<100){
       stroke(102, 61, 0);
     }
     else if(mouseY<150){
       stroke(0,0,255); 
     }
     else if(mouseY<200){
       stroke(0,255,255); 
     }
     else if(mouseY<250){
       stroke(0); 
     } 
    }
    
    if(mouseX>450){
     if(mouseY<50){
       stroke(255);
     }
     else if(mouseY<100){
       fill(255);
       stroke(0);
       strokeWeight(3);
       rect(50,0,400,600);
       ellipse(250,400,150,150);
     }
     else if(mouseY<150){
      strokeWeight(3); 
     }
     else if(mouseY<200){
      strokeWeight(8);  
     }
     else if(mouseY<250){
      save("HW03_1.jpg");
     }
     
    }
    
    if(mouseX>55 && mouseX<445 && pmouseX>55 && pmouseX<445){
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }

}
