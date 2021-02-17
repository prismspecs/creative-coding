class Ball {
  float xSpeed;
  float ySpeed;
  float xPos, yPos;
  
  // contructor
  Ball(int x, int y) {
    xPos = x;
    yPos = y;
    
    xSpeed = random(2,10);
    ySpeed = random(2,10);
  }
  
  // Custom method for updating the variables
  void update() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    
    if(xPos > width) {
      xSpeed = xSpeed * -1;
    }
    if(xPos < 0) {
      xSpeed = xSpeed * -1;
    }
    
    if(yPos > height) {
      ySpeed = ySpeed * -1;
    }
    if(yPos < 0) {
      ySpeed = ySpeed * -1;
    }
  }
  
  // Custom method for drawing the object
  void display() {
    fill(255);
    ellipse(xPos, yPos, 16, 16);
  }
}
