void menu(){
  
  
  image(bg, bgX, -450);
  if(tint > 0){
    fill(255,255,255,tint);
    tint --;
  }
  image(titlebanner, 200, 100);
  rect(0, 0, width, height);
  if(paddleDudeX < 1200){
    paddleDude.display(paddleDudeX, 500, 0.3);
    paddleDudeX += paddleDudeSpeed; 
  }
}

void gameplay(){
  image(bg, bgX, -450);
  image(bg2, bgX2, -450);
  bgX -= 5;
  bgX2 -= 5;
  rect(10, 450, 30, 45);
  
  //sliding background
  if(bgX < -1910){
    bgX = width;
  }
  if(bgX2 < -1910){
    bgX2 = width;
  }
  //user input parsing for character movement 
  if (wPressed && (charY > 0)){
   rotate(-0.05); 
   charY -= 10; 
  }
  if (sPressed && (charY + 150 < height)){
   rotate(0.05); 
   charY += 10;
  }
 
  plane.display(10, charY, 1);
  if(bgX > 500){
    image(smiley, 10, charY); 
  }
}
  //image(plane, 10,charY, plane.width/1.5, plane.height/1.5);
  //image(plane, 10,charY);
