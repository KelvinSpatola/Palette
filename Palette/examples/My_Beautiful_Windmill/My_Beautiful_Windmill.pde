import overmind.Palette;

void setup() {
  size(400, 400);
}

void draw() {
  background(Palette.SKY_BLUE);

  rectMode(CORNER);
  fill(Palette.OLIVE_DRAB);
  rect(0, 2*height/3, width, height);

  noStroke();
  fill(Palette.AZURE_LIGHT);
  ellipse(width/4, height/5, 150, 75);
  ellipse(width/2, height/7, 100, 50);

  rectMode(CENTER);
  translate(width>>1, height>>1);

  stroke(Palette.BLACK);
  fill(Palette.SIENNA); //dome
  ellipse(0, -10, 80, 80);

  fill(Palette.KHAKI); //cylinder
  rect(0, 50, 80, 120);

  fill(Palette.SADDLE_BROWN); //door
  rect(25, 85, 15, 50);

  float step = frameCount * 0.02;
  
  fill(Palette.IVORY); //blades
  for (int i = 0; i<3; i++) {
    float x1 = 100 * cos(2*THIRD_PI * i + step);
    float y1 = 100 * sin(2*THIRD_PI * i + step);
    float x2 = 100 * cos(2*THIRD_PI * i + PI/5 + step);
    float y2 = 100 * sin(2*THIRD_PI * i + PI/5 + step);
    triangle(0, 0, x1, y1, x2, y2);
  }   
  fill(Palette.GOLD); //axis
  ellipse(0, 0, 10, 10);
}
