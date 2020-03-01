// creature coordinates
float myX;
float myY;
float mySize = 8;     // how big is the creature?
float myRed = 126;    // color vars for the creature
float myGreen = 22;
float myBlue = 226;

void setup() {
  size(500, 500);
  // randomize starting position
  myX = random(width);
  myY = random(height);

  noStroke();
  background(0);
}

void draw() {
  // change the color randomly
  myRed = myRed + random(-2, 2);
  myGreen = myGreen + random(-2, 2);
  myBlue = myBlue + random(-2, 2);

  fill(myRed, myGreen, myBlue);

  // move creature by a random X and Y value
  myX += random(-10, 10);
  myY += random(-10, 10);

  // keep in bounds!
  if (myY < 0 ) {
    myY = height;
  }
  if (myY > height ) {
    myY = 0;
  }
  if (myX < 0 ) {
    myX = width;
  }
  if (myX > width ) {
    myX = 0;
  }

  mySize += random(-3, 3);

  // draw the creature
  ellipse(myX, myY, mySize, mySize);
}

void keyPressed() {
  // save image to file without overwriting
  //save("screenshots/img" + frameCount + ".png");
  saveFrame("screenshots/####-img.png");
}
