class Dot {

  float xPos;
  float yPos;
  float diameter;

  float r, g, b;
  
  boolean isSeen = false;

  Dot() {
    xPos = random(width);
    yPos = random(height);
    diameter = random(10, 30);
    
    r = random(255);
    g = random(255);
    b = random(255);
  }
  
  void update() {
    
  }
  
  void display() {
    
    // draw a yellow outline around any seen dots
    if(isSeen) {
      pg.strokeWeight(3);
      pg.stroke(255,255,0);
    } else {
      pg.noStroke();
    }
    
    pg.fill(r,g,b);
    pg.ellipse(xPos, yPos, diameter, diameter);
  }
  
}
