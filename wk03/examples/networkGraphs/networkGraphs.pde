int qtyPoints = 25;

float[] pointX, pointY;

void setup() {

  size(500, 500);
  frameRate(30);

  pointX=new float[qtyPoints];
  pointY=new float[qtyPoints];

  for (int i = 0; i < qtyPoints; i++) {
    pointX[i]=random(width);
    pointY[i]=random(height);
  }

  background(0);
}

void draw() {
  
  background(0);
  
  //draw all the lines first
  for (int i = 0; i < qtyPoints; i++) {
    for (int j = i+1; j < qtyPoints; j++) {
      stroke(127);
      strokeWeight(0.5);
      line(pointX[i], pointY[i], pointX[j], pointY[j]);
    }
  }
  
  //draw the points on top
  for (int i = 0; i < qtyPoints; i++) {
    stroke(255);
    strokeWeight(10);
    point(pointX[i], pointY[i]);
  }
  
}
