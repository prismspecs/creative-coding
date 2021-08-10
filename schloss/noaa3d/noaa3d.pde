PImage img;  // create a PImage object

int numPixels = 0;

float rotY = 0;  // y rotation
float zoom = 1;

int chunkSize =2;

int scanUpTo = 0;


void setup() {
  size(500, 500, P3D);

  //img = loadImage("noaa18-bw-half.png");
  img = loadImage("grayson.jpg");

  // find total number of pixels in the image
  numPixels = img.width * img.height;
  println(numPixels, "pixels in the image");
}


void draw() {
  //image(img, 0, 0);

  background(126);

  // establish a new origin point for rotation
  translate(width/2, height/2);

  scale(.7);
  zoom += .05;

  // rotate it
  rotateY(rotY);
  rotY += .002;

  // optionally, only draw up to a certain pixel #
  //scanUpTo+=40;
  //if (scanUpTo>numPixels) {
  //  scanUpTo = numPixels;
  //}
  
  // loop thru all the pixels in the image
  for (int i = 0; i < numPixels; i+=chunkSize) {
    // find the color of the pixel
    float br = brightness(img.pixels[i]);



    // figure out X and Y
    int x = i % img.width;
    int y = int(i / img.width);

    // draw it
    pushMatrix();
    translate(x - img.width/2, y - img.height/2, br);
    noStroke();
    fill(img.pixels[i]);

    //if (br < 120 && br > 28) {
    //  fill(0,255,0);
    //  br = map(br, 0, 40, -100, 40);
    //}


    rect(0, 0, chunkSize, 1);
    popMatrix();
  }
  // save the frame
  saveFrame("output/######-img.png");
}