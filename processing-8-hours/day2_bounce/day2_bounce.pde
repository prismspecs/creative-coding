// variables to store position and size of circle
float myX; 
float myY; 
float mySize = 20;
float myXSpeed = 3;
float myYSpeed = 13;

void setup() {
  size(500,500);

  // now that the window is created we can use width, height
  myX = width/2;
  myY = height/2;
  noStroke();
}
void draw() {
  background(0);
  
  // move the circle in x and y
  myX = myX + myXSpeed;
  myY = myY + myYSpeed;
  
  // check for if it hits right side of screen
  if(myX >= width) {
    // reverse direction
    myXSpeed = myXSpeed *-1;
  }
  // if it hits the left side of the screen
  if(myX <= 0) {
    // reverse direction
    myXSpeed = myXSpeed *-1;
  }
  
  // check for if it hits bottom side of screen
  if(myY >= height) {
    // reverse direction
    myYSpeed = myYSpeed *-1;
  }
  // if it hits the top side of the screen
  if(myY <= 0) {
    // reverse direction
    myYSpeed = myYSpeed *-1;
  }
  
  ellipse(myX, myY, mySize, mySize);
}
