boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;
boolean paused;

void keyPressed() {
  if (keyCode == UP) {
    upPressed = true;
  } else if (keyCode == DOWN) {
    downPressed = true;
  } else if (keyCode == LEFT) {
    leftPressed = true;
  } else if (keyCode == RIGHT) {
    rightPressed = true;
  }

  if (key == 'w') {
    wPressed = true;
  }
  if (key == 'a') {
    aPressed = true;
  }
  if (key == 's') {
    sPressed = true;
  }
  if (key == 'd') {
    dPressed = true;
  }

  if (key == ENTER || key == RETURN) {
    paused = !paused;
  }

  if (key == ESC) {
    exit();
  }
}

void movement() {
  if (upPressed) {
    speedY -= 0.2;
  }
  if (downPressed) {
    speedY += 0.2;
  }
  if (leftPressed) {
    speedX -= 0.2;
  }
  if (rightPressed) {
    speedX += 0.2;
  }

  if (wPressed) {
    camX -= 0.01;
  }
  if (aPressed) {
    camY += + 0.01;
  }
  if (sPressed) {
    camX += 0.01;
  }
  if (dPressed) {
    camY -= 0.01;
  }
}


void keyReleased() {
  if (keyCode == UP) {
    upPressed = false;
  } else if (keyCode == DOWN) {
    downPressed = false;
  } else if (keyCode == LEFT) {
    leftPressed = false;
  } else if (keyCode == RIGHT) {
    rightPressed = false;
  }
  if (key == 'w') {
    wPressed = false;
  }
  if (key == 'a') {
    aPressed = false;
  }
  if (key == 's') {
    sPressed = false;
  }
  if (key == 'd') {
    dPressed = false;
  }
}
