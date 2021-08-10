void setup() {
  size(500,500);
}

void draw() {
  // should we draw a circle?
  float circleChance = random(1);
  if(circleChance > .2) {
    ellipse(random(width), random(height), 20, 20);
  }
  // should we draw a rectangle?
  float rectChance = random(1);
  if(rectChance > .9) {
    rect(random(width), random(height), 20, 20);
  }
}

void keyPressed() {
  float coin = random(1);
  //println(coin);
  
  if(coin >= .5) {
    println("heads");
  } else {
    println("tails");
  }
}
