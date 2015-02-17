void menu(){
  
  
  image(bg, bgX, -450);
  if(tint >= 0){
    fill(255,255,255,tint);
    tint -= 3;
  }
  
  plane.display(charX, charY, 1, 1);
  if(tint < 0){
    if(paddleDudeX < 1200 ){
      paddleDude.display(paddleDudeX, 450, 0.3, 1);
      paddleDudeX += paddleDudeSpeed;
    }
    else{
      paddleDudeX = -200; 
    }
  }
  image(titlebanner, 200, 100);
  rect(0, 0, width, height);
  
}
int paddleDudeX = 200;
int paddleDudeY = 450;
int paddleDudeSpeed = 6; 
int jumpOffset = 0;
float gravity = 0.8; 
int jumpSpeed = 120;
int ground = 450; 
int paddlerSpeed = 1; 
int bgSpeed = 1;
PImage keysUnpressed;
void gameplay(){
  //BACKGROUND LAYER
  image(bg, bgX, -450);
  image(bg2, bgX2, -450);
  
  if(bgX < -1910){
    bgX = width;
  }
  if(bgX2 < -1910){
    bgX2 = width;
  }
  
  //GRAVITY
  if(paddleDudeY - jumpOffset < ground){
    jumpOffset *= gravity;
    
  }
  else{
    jumpOffset = 0; 
  }
  //JUMP MECHANICS
  if(paddleDudeY - jumpOffset >= ground && wPressed){
   jumpOffset = jumpSpeed;
   println("JUMP");  
  }
  
  //PADDLE DUDE
  paddleDude.display(paddleDudeX, paddleDudeY - jumpOffset, 0.35, paddlerSpeed);
  fill(50);
  text("Current Speed:" + paddlerSpeed, 200, 580);
  bgX -= bgSpeed;
  bgX2 -= bgSpeed;
  //CONTROL DIAGRAM
  image(keysUnpressed, 1000, 550); 
  //user input parsing for character movement
  if(aPressed){
   paddlerSpeed = 1;
   bgSpeed = 5;
  }
  if(dPressed){
   paddlerSpeed = 1;
   bgSpeed = 10; 
  } 
  
}
   //image(plane, 10,charY, plane.width/1.5, plane.height/1.5);
  //image(plane, 10,charY);
