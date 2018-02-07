class Lines {
  //class variables
  float xpos;
  float ypos;
  float strokeW;
  float lineLength;

  //constructor
  Lines(float tempX, float tempY, float tempStroke, float tempLength) {
    xpos = tempX;
    ypos = tempY;
    strokeW = tempStroke;
    lineLength = tempLength;
  }

  void display() {

    strokeWeight(strokeW);

    stroke(150);

    if (xpos > width || xpos <0 || ypos>height || ypos<0) {
      xpos = random(width);
      ypos = random(height);
    } else {

      if (random(100)>90) {
        strokeWeight(strokeW);
        moveLeft(xpos, ypos, lineLength);
      } else if (random(100)>70) {
        strokeWeight(strokeW);
        moveUp(xpos, ypos, lineLength);
      } else if (random(100)>50) {
        strokeWeight(strokeW);
        moveDown(xpos, ypos, lineLength);
      } else {
        strokeWeight(strokeW);
        moveRight(xpos, ypos, lineLength);
      }
    }
  }
  void moveRight(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX+i, startY);
      xpos = startX + i;
      ypos = startY;
    }
  }

  void moveLeft(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX-i, startY);
      xpos = startX - i;
      ypos = startY;
    }
  }

  void moveUp(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY-i);
      ypos = startY - i;
      xpos = startX;
    }
  }

  void moveDown(float startX, float startY, float moveCount) {
    for (float i=0; i<moveCount; i++) {
      point(startX, startY+i);
      ypos = startY + i;
      xpos = startX;
    }
  }
}