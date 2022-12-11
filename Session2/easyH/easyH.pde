void setup() {
  size(525, 525);
  noStroke();
}

void draw() {
  background(0);

  for (int xpos = 0; xpos < 11; xpos++) {
    for (int ypos = 0; ypos < 11; ypos++) {
      fill(255);
      rect(50 * xpos, 0, 25, height);
      rect(0 , 50 * ypos, height, 25);
    }
  }
}
