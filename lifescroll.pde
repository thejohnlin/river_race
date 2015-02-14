/* @pjs preload="john_plane_gif/00.png,
john_plane_gif/01.png,
john_plane_gif/02.png,
john_plane_gif/03.png,
john_plane_gif/04.png,
john_plane_gif/05.png,
john_plane_gif/06.png,
john_plane_gif/07.png,
john_plane_gif/08.png,
john_plane_gif/09.png,
john_plane_gif/10.png,
john_plane_gif/11.png,
john_plane_gif/12.png,
john_plane_gif/13.png,
john_plane_gif/14.png,
john_plane_gif/15.png,
john_plane_gif/16.png,
bg.png";
*/

//background
PImage bg;
PImage bg2;
//character sprites
Animation plane;
PImage smiley;

//item to drop

//movement control booleans
boolean wPressed, sPressed; //WASD


int charX = 400;
int charY = 160;
int bgX = 0;
int bgX2 = 1200;

// LEVEL CONTROL
int gamePhase = 1; 

void setup()
{
  loadImages();
  size(1200,600);
  frameRate(60);
}

void draw()
{
  if(gamePhase == 0){
    menu();
  }
  if(gamePhase == 1){
    gameplay();
  }
}

void keyPressed()
{
  if (key == 'w' || key == 'W' || keyCode == UP)
  {
    wPressed = true;
  }
  if (key == 's' || key == 'S' || keyCode == DOWN)
  {
    sPressed = true;
  }
}


void keyReleased()
{

  if (key == 'w' || key == 'W' || keyCode == UP)
  {
    wPressed = false;
  }
  if (key == 's' || key == 'S' || keyCode == DOWN)
  {
    sPressed = false;
  }
}
