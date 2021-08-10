void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  // semi-opaque background
  fill(255, 255, 255, 5);
  //rect(0, 0, width, height);

  //stroke(255,0,0);
  //line(width/2,height/2,mouseX, mouseY);
  
  //stroke(0);
  //line(mouseX, mouseY, pmouseX, pmouseY);

  // print a message to the console
  //println(mouseX, mouseY);

  // if you want to save every frame
  saveFrame("frames/####-test.png");
}

void keyPressed() {
  // print a message to the console
  println("saving image");
  
  // save an image
  save("test" + frameCount + ".png");
}

// only happens when the mouse is moved and
// mouse button is down
void mouseDragged() {
  // random circle color at mouse location
  fill(0);
  ellipse(mouseX, mouseY, 20, 20);
}
