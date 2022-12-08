void setup() {
  size(500, 500);
  background(0);
  noStroke();
  fill(255, 0, 0);
  rect(50, 50, 50, 50);
}

void draw() {
  fill(mouseX / 2);
  stroke(255);
  rect(mouseX, mouseY, mouseX, mouseY);

  push();
  fill(0, 255, 0);
  rect(400, 400, 50, 50);
  pop();

  push();
  strokeWeight(5);
  stroke(255);
  line(75, 75, 425, 425);
  pop();
}
