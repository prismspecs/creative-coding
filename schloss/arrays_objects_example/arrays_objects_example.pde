int unit = 40;
Ball[] ball;
int index = 0;

void setup() {
  size(640, 360);
  noStroke();

  // make space for 100 objects
  ball = new Ball[100];

  // add one to start
  ball[index++] = new Ball(width/2, height/2);
}

void draw() {
  background(0);
  for (int i = 0; i < index; i++) {
    ball[i].update();
    ball[i].display();
  }
}
void mousePressed() {
  if (index < 100) {
    ball[index++] = new Ball(mouseX, mouseY);
  }
}
