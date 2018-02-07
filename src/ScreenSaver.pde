Lines[] myLines = new Lines [10];
Lines myLine;

void setup() {
  frameRate(30);
  background(75);
  size(1920, 1080);
  myLine = new Lines (random(width), random(height), random(2, 6), random(10, 25));
  for ( int i=0; i<myLines.length; i++) {
    myLines[i] = new Lines(random(width), random(height), random(2, 6), random(10, 25));
  }
}

void draw() {
  if (frameCount < 40) {
    myLine.display();
    for ( int i =0; i<myLines.length; i++) {
      myLines[i].display();
    }
  } else {
    frameCount = 0;
    background(75);
  }
}