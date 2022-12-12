float xpos, ypos; 
float t = 0; 
float r = 0; 

int imageCounter = 0;

int sliderValue = 15;
int stroke = 15;
int stroke1 = 15;

boolean visible = false;

import controlP5.*;
ControlP5 cp5;

void setup() {
  size(500, 500);

  cp5 = new ControlP5(this);
  cp5.addSlider("sliderValue")
    .setPosition(50, 50)
    .setRange(0, 50)
    ;

  cp5.addSlider("stroke")
    .setPosition(50, 75)
    .setRange(0, 20)
    ;

  cp5.addSlider("stroke1")
    .setPosition(50, 100)
    .setRange(0, 20)
    ;
}

void draw() {

  background(0);

  t = t + 0.005;
  r = r + 0.0055;

  float x = noise(t);
  float y = noise(r);

  xpos = map(x, 0, 1, 0, width);
  ypos = map(y, 0, 1, 0, height);

  noFill();
  stroke(255);



  println(stroke);
  println(sliderValue);


  strokeWeight(stroke);
  for (int i = 0; i < sliderValue; i++) {
    ellipse(xpos, ypos, 50 * i, 50 * i);
  }


  strokeWeight(stroke1);
  for (int i = 0; i < 25; i++) {
    ellipse(250, 250, 50 * i, 50 * i);
  }
}

void keyPressed() {
  if (keyCode == ENTER) {
    println("Photo");
    saveFrame(imageCounter + ".jpg");
    imageCounter++;
  }

  if (keyCode == BACKSPACE) {
    visible = !visible;
  }
}
