/*
* Made by Jean Rehr with help from the coding train yt channel.
*/

//import peasy.*;

//PeasyCam cam;

int cols, rows;
int scale = 20;
int terrain_width = 2000;
int terrain_height = 2000;
int screen_width = 1000;
int screen_height = 1000;

float xoff = random(10);
float yoff = random(10);

float speedX = 0;
float speedY = 0;
float camX = 0;
float camY = 0;

float[][] mounds;

void settings() {
  size(screen_width, screen_height, P3D);
}

void setup() {
  //cam = new PeasyCam(this, 100);
  //cam.setMinimumDistance(50);
  //cam.setMaximumDistance(500);
  cols = terrain_width / scale;
  rows = terrain_height/ scale;
  mounds = new float[cols][rows];
}

void draw() {
  movement();

  yoff = speedY;
  for (int y = 0; y < rows; y++) {
    xoff = speedX;
    for (int x = 0; x < cols; x++) {
      mounds[x][y] = map(noise(xoff, yoff), 0, 1, -10, 70);
      xoff += 0.2;
    }
    yoff += 0.2;
  }

  background(0);
  stroke(255);
  noFill();

  translate(screen_width/2, screen_height/2+50);

  rotateX(PI/3 + camX);
  rotateY(camY);
  
  translate(-terrain_width/2, -terrain_height/2);

  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x < cols; x++) {
      vertex(x * scale, y * scale, mounds[x][y]);
      vertex(x * scale, (y+1) * scale, mounds[x][y+1]);
    }
    endShape();
  }
}
