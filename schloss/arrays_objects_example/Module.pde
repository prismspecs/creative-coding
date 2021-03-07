float gravity = 2;

class Ball {
  // the properties of each Ball object
  float xSpeed;
  float ySpeed;
  float xPos;
  float yPos;
  
  // contructor
  Ball(int x, int y) {
    // take incoming values and use them as
    // coordinates for each new object
    xPos = x;
    yPos = y;
    
    // generate a random speed
    xSpeed = random(-10,10);
    //ySpeed = random(-10,10);
    
    ySpeed = 0;
  }
  
  // custom method for updating the variables
  void update() {
    // move the ball
    //xPos = xPos + xSpeed;
    //yPos = yPos + ySpeed;
    
    yPos += ySpeed;
    ySpeed += gravity;
   
    
    // test for collisions
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
  
  // custom method for drawing the object
  void display() {
    fill(255);
    ellipse(xPos, yPos, 16, 16);
  }
}
