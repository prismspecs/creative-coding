// https://github.com/prismspecs/creative-coding

// create an array named "ball" of type Ball
Ball[] ball;

// keep track of number of objects present
int count = 0;

void setup() {
  size(640, 360);
  noStroke();
  
  // make space for 1000 objects
  ball = new Ball[1000];

  // add one to start
  ball[count] = new Ball(width/2, height/2);
  count++;  // increment the Ball count
}

void draw() {
  
  background(0);
  
  for (int i = 0; i < count; i++) {
    ball[i].update();
    ball[i].display();
  }
  
}

void mousePressed() {
  if (count < 1000) {
    ball[count] = new Ball(mouseX, mouseY);
    count++;  // increment
  }
}
