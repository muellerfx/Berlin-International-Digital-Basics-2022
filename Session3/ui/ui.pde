int val0; 
int val1; 
int val2; 

import controlP5.*;
ControlP5 cp5; 

boolean show = true;

void setup() {
  size(500, 500);
  cp5 = new ControlP5(this);

  cp5.addSlider("val0")
    .setPosition(25, 25)
    .setRange(0, 255)
    ;

  cp5.addSlider("val1")
    .setPosition(25, 50)
    .setRange(0, width)
    ;

  cp5.addSlider("val2")
    .setPosition(25, 75)
    .setRange(0, height)
    ;
}

void draw() {
  if (show == true) {
    cp5.show();
  } else {
    cp5.hide();
  }

  background(val0);
  noStroke();
  fill(255);
  rect(val1, val2, 50, 50);
}

void keyPressed(){
  show = !show;
}
