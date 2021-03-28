PGraphics pg;

PGraphics mask;  // off screen buffer for mask image

// create array to store Dot objects
Dot[] dots;
int dotCount = 0;  // how many Dot objects are currently in the scene
int maxDots = 1000;

float spotlightDiameter = 100;

void setup() {
  size(800, 800);

  pg = createGraphics(width, height);
  mask = createGraphics(width, height);

  // create the dots array
  dots = new Dot[maxDots];
}

void draw() {

  // create new dots
  // but dont go over the maximum
  if (dotCount < maxDots) {
    dots[dotCount] = new Dot();
    dotCount++;
  }

  // draw the mask itself at the mouse position
  mask.beginDraw();
  mask.background(0);  // black out the background
  mask.fill(255);
  mask.ellipse(mouseX, mouseY, spotlightDiameter, spotlightDiameter);
  mask.endDraw();

  // now draw on the pg context
  pg.beginDraw();
  pg.noStroke();
  pg.background(0);//!

  for (int i = 0; i < dotCount; i++) {
    dots[i].update();
    dots[i].display();
  }

  pg.endDraw();

  // now do the actual masking
  pg.mask(mask);


  // are any dots within the spotlight right now?
  for (int i = 0; i < dotCount; i++) {
    float theDistance = dist(mouseX, mouseY, dots[i].xPos, dots[i].yPos);
    
    // check if Dot is within spotlight, but also the whole DOT
    if(theDistance < spotlightDiameter/2 - dots[i].diameter/2) {
      dots[i].isSeen = true;
    } else {
      dots[i].isSeen = false;
    }
  }

  background(255);
  image(pg, 0, 0);
}
