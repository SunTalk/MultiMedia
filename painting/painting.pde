void setup() {
size(800, 600);
strokeWeight(3);
background(255,255,255);

fill(255);
rect(50,0,700,600);

fill(255,0,0);
rect(0,0,50,50);
fill(0,255,0);
rect(0,50,50,50);
fill(0,0,255);
rect(0,100,50,50);
fill(0,255,255);
rect(0,150,50,50);
fill(255,0,255);
rect(0,200,50,50);
fill(255,255,0);
rect(0,250,50,50);
fill(0,0,0);
rect(0,300,50,50);

textSize(15);

fill(255);
rect(750,0,50,50);
fill(0);
text("erase",755,45);

fill(255);
rect(750,50,50,50);
fill(0);
text("clear",755,95);

fill(255);
rect(750,100,50,50);
fill(0);
ellipse(775,125,3,3);

fill(255);
rect(750,150,50,50);
fill(0);
ellipse(775,175,8,8);


fill(255);
rect(750,200,50,50);
fill(0);
text("save",755,245);

smooth();

}

void draw() {

  if((mousePressed==true) && (mouseButton==LEFT)){
    if(mouseX<50){
     if(mouseY<50){
       stroke(255,0,0);
     }
     else if(mouseY<100){
       stroke(0,255,0);
     }
     else if(mouseY<150){
      stroke(0,0,255); 
     }
     else if(mouseY<200){
      stroke(0,255,255); 
     }
     else if(mouseY<250){
      stroke(255,0,255); 
     }
     else if(mouseY<300){
      stroke(255,255,0); 
     }
     else if(mouseY<350){
      stroke(0,0,0); 
     }  
    }
    
    if(mouseX>750){
     if(mouseY<50){
       stroke(255);
     }
     else if(mouseY<100){
       fill(255);
        rect(50,0,700,600);
     }
     else if(mouseY<150){
      strokeWeight(3); 
     }
     else if(mouseY<200){
      strokeWeight(8);  
     }
     else if(mouseY<250){
      save("text.jpg");
     }
     
    }
    
    if(mouseX>55 && mouseX<745 && pmouseX>55 && pmouseX<745){
      line(mouseX, mouseY, pmouseX, pmouseY);
    }
  }

}
