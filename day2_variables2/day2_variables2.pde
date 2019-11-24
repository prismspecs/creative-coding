// create a variable...
float brushSize = 1;

void setup() {
  size(500, 500);
}

void draw() {
  
}

void mouseDragged() {
  // draw a line from current mouse location to last location
  line(mouseX, mouseY, pmouseX, pmouseY);
  //text(brushSize,mouseX + 10, mouseY+10);
}

// this happens when a key is pressed
void keyPressed() {

  // in if statements use TWO equal signs, which
  // evaluates a variable
  if (key == 'a') {
    // increase the brush size by .5
    brushSize = brushSize + .5;
    // use the variable in strokeWeight
  }

  // if z is pressed...
  if (key == 'z') {
    // decrease the brush size by .5
    if (brushSize > 0) {
      brushSize = brushSize - .5;
    }
    // use the variable in strokeWeight
  }

  // if x is pressed, randomize the line color
  if (key == 'x') {
    stroke(random(255), random(255), random(255));
  }

  println(brushSize);
  strokeWeight(brushSize);
}
