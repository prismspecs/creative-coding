size(2080, 1592);

PImage img;

img = loadImage("noaa18-bw.png");

img.loadPixels();

int numPixels = img.width * img.height;

for (int i = 0; i < numPixels; i++) {
  //float mapped = map(img.pixels[i],0,255,0,2);

  float b = brightness(img.pixels[i]);

  if (b > 70) {
    //img.pixels[i] = color(255);
    img.pixels[i] = color(map(b, 120, 255, 200, 255));
  } else if (b > 30) {
    //img.pixels[i] = color(0, 255, 0);
    img.pixels[i] = color(50, map(b, 30, 120, 0, 255), 50);
  } else if (b > 0) {
    //img.pixels[i] = color(0, 0, 255);
    img.pixels[i] = color(50, 50, map(b, 0, 30, 0, 255));
  }
}

img.updatePixels();

image(img, 0, 0);
