// setup happens once when your program starts
void setup() {
  size(500, 500);
  noStroke();
}
// draw happens in a loop forever after that
void draw() {
  // using just one number for a color assumes
  // greyscale
  //background(255,255,255);
  // in order to have a semi-transparent background
  // we cant use background but we can draw a rect
  // that is exactly the size of the window
  // and fill it with a semi-transparent white color
  fill(255, 255, 255, 5);
  rect(0, 0, width, height);
  
  // fill using random values for R,G,B
  fill(random(255), random(255), random(255));
  // draw an ellipse at a random coordinate...
  ellipse(random(width), random(height), 10, 10);
  
}
