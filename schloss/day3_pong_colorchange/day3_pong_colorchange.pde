// create some variables
// float x = 300 means create a variable of type float,
// named 'x' and give it a value of 300
float x;
float y;

// how fast the pong ball moves
float xSpeed = 3;
float ySpeed = 5;

float r;  // red
float g;  // green  
float b;  // blue

void setup() {
  size(600, 600);
  noStroke();

  // erase background
  background(0);

  // start pongball at a random location
  x = random(width);  // somewhere between 0 and width
  y = random(height);

  // start with a random color
  r = random(255);
  g = random(255);
  b = random(255);
}

void draw() {

  // fill pongball with r,g,b variable values
  fill(r, g, b);

  // draw pongball
  ellipse(x, y, 50, 50);

  // increase x and y
  x = x + xSpeed;
  y = y + ySpeed;

  // conditional logic!
  // if pongball x has gone off screen right...
  if (x > width) {
    // reverse the xspeed
    xSpeed = xSpeed * -1;

    // create a random color
    r = random(255);
    g = random(255);
    b = random(255);
  }
  // if pongball has gone off the left side of the screen
  if (x < 0) {
    xSpeed = xSpeed * -1;
    // create a random color
    r = random(255);
    g = random(255);
    b = random(255);
  }
  // if pongball hits bottom of screen
  if (y > height) {
    ySpeed = ySpeed * -1;
    // create a random color
    r = random(255);
    g = random(255);
    b = random(255);
  }
  // if pongball hits top of screen
  if (y < 0) {
    ySpeed = ySpeed * -1;
    // create a random color
    r = random(255);
    g = random(255);
    b = random(255);
  }
}
