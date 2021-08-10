// variables ...
int myNumber = 0;

void setup() {
  size(600,600);
  // increase the text size!
  textSize(100);
  // draw the text from its center
  textAlign(CENTER, CENTER);
  
}

void draw() {
  background(0);  // clear the background
  
  text(myNumber, width/2, height/2);
  
  // increase the value of myNumber
  myNumber = myNumber + 1;  
  //myNumber += 1;
  //myNumber++;  // increase by 1
  
}
