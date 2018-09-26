void setup() {
  size(500,500);
  noFill();
  stroke(#FFFFFF);
  strokeWeight(2);
}

int x1 = 100;
int x2;
int direction = 0;

void draw() {
  background(#000000);
  int size1 = 0;
  int size2 = 0;
  x2 = 500 - x1;
  for (int j = 0; j < 25; j++) {
    size1 += 10;
    ellipse(x1,250,size1,size1);
  }
  for (int k = 0; k < 25; k++) {
    size2 += 10;
    ellipse(x2,250,size2,size2);
  }
  if (direction == 0) {
    x1 += 1;
  } else {
    x1 -= 1;
  }
  if (x1 > 500) {
    direction = 1;
  } else if (x1 < 0) {
    direction = 0;
  }
  delay(10);
}