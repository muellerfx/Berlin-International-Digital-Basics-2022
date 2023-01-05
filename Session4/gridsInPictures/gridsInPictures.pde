PImage img; 
float noiseX = 0.0; 
float noiseY = 0.0;

int scale = 50; 

void setup() {
  size(500, 500);
  img = loadImage("img.jpg");
}

void draw() {
  PImage newImg = img.get(mouseX, mouseY, scale, scale);

  for (int xpos = 0; xpos < width; xpos = xpos + scale) {
    for (int ypos = 0; ypos < height; ypos = ypos + scale) {
      image(newImg, xpos, ypos);
    }
  }
}
