class Animation {
  PImage[] images;
  int imageCount;
  int frame;
  
  Animation(String imagePrefix, int count) {
    imageCount = count;
    images = new PImage[imageCount];

    for (int i = 0; i < imageCount; i++) {
      // Use nf() to number format 'i' into four digits
      String filename = imagePrefix + nf(i, 2) + ".png";
      images[i] = loadImage(filename);
    }
  }

  void display(float xpos, float ypos, float scale){
    frame = (frame+1) % imageCount;
    image(images[frame], xpos, ypos, images[frame].width/scale, images[frame].height/scale);
  }
  
  int getWidth() {
    return images[0].width;
  }
}
