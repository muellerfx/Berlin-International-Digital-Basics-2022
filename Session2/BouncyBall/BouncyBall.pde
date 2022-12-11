int size = 50; 
int xpos;
int ypos; 

int speed = 1; 

void setup() {
  size(500, 500);

  xpos = width/2;
  ypos = height/2;
}

void draw() {
  background(0);
  ellipse(xpos, ypos, size, size);

  xpos = xpos + speed;
  println(xpos);

  if (xpos > 500 - size/2) {
    speed = speed * -1;
  }

  if (xpos < 0 + size/2) {
    speed = speed * -1;
  }
}
