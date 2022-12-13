float randomX; 
float randomY; 
float randomSize; 

float t;
float r;

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {  
  background(0);

  t = t + 0.005;
  float t0 = noise(t);
  randomX = map(t0, 0, 1, 0, width);

  r = r + 0.0055;
  float r0 = noise(r);
  randomY = map(r0, 0, 1, 0, height);

  fill(255);
  ellipse(randomX, randomY, 10, 10);
}
