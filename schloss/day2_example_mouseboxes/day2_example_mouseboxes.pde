void setup() {
  fullScreen();
  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(50); 
  fill(255, 200);
  
  // draw a rect at the mouse position
  rect(mouseX, height/2, mouseY/2, mouseY/2);
  
  // calculate the opposite position (to draw another one)
  int inverseX = width-mouseX;
  int inverseY = height-mouseY;
  
  // draw the other one
  rect(inverseX, height/2, inverseY/2, inverseY/2);
}
