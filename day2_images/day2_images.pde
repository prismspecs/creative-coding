// github.com/prismspecs/creative-coding

// create a variable to store img
PImage myImg;

void setup() {
  size(500,500);
  // load the actual image
  // into memory
  myImg = loadImage("wurm.jpg");
}

void draw() {
  // draw the image to the screen
  // image() function wants 1: the image name,
  // 2,3: the x,y coordinates
  // 4,5: the width and height (optional)
  image(myImg, mouseX, mouseY, 100, 100);
  
  // 
  saveFrame("frames/####-img.png");
}

void keyPressed() {
  save("data/test.png");
  myImg = loadImage("test.png");
}
