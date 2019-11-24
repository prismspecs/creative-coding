// create a variable to use in background
// it will go from 0->255->0-> and so on
int fadeAmount = 0;

// create a variable to store what we increment by
int fadeBy = 1;

void setup() {
  size(500, 500);
}

void draw() {
  // use fadeAmount as background color value
  background(fadeAmount);

  // increase fadeAmount
  fadeAmount = fadeAmount + fadeBy;

  //if(fadeAmount >= 255) {
  //  // reverse direction of fade
  //  fadeBy = fadeBy * -1;
  //}
  //// if fadeAmount reaches 0, reverse fade
  //if(fadeAmount <= 0) {
  //  fadeBy = fadeBy * -1;
  //}

  if (fadeAmount >= 255 || fadeAmount <= 0) {
    fadeBy = fadeBy * -1;
  }
}
