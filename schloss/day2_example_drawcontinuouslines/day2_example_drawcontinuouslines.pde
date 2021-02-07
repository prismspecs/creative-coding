void setup() {
  size(640, 360);
  background(102);
}

void draw() {
  stroke(255);
}

void mouseDragged() {
  // draw a line from the previous mouse position
  // to the current mouse position
  line(mouseX, mouseY, pmouseX, pmouseY);
}
