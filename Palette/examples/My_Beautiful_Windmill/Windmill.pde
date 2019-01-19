class Windmill implements Palette {
  void show() {
    pushStyle();
    rectMode(CENTER);
    translate(width>>1, height>>1);

    stroke(BLACK);
    fill(SIENNA); //dome
    ellipse(0, -10, 80, 80);

    fill(KHAKI); //cylinder
    rect(0, 50, 80, 120);

    fill(SADDLE_BROWN); //door
    rect(25, 85, 15, 50);

    fill(IVORY); //blades
    for (int i = 0; i<3; i++) {
      float x1 = 100 * cos(TWO_PI/3 * i + (frameCount * 0.02));
      float y1 = 100 * sin(TWO_PI/3 * i + (frameCount * 0.02));
      float x2 = 100 * cos(TWO_PI/3 * i + PI/5 + (frameCount * 0.02));
      float y2 = 100 * sin(TWO_PI/3 * i + PI/5 + (frameCount * 0.02));
      triangle(0, 0, x1, y1, x2, y2);
    }   
    fill(GOLD); //axis
    ellipse(0, 0, 10, 10);
    popStyle();
  }
}
