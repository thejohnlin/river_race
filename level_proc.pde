void menu(){

}

void gameplay(){
  image(bg, bgX, -350);
  image(bg2, bgX2, -350);
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
 
  plane.display(10, charY);
  if(bgX > 500){
    image(smiley, 10, charY); 
  }
}
  //image(plane, 10,charY, plane.width/1.5, plane.height/1.5);
  //image(plane, 10,charY);
