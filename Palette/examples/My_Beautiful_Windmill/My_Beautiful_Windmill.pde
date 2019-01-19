import overmind.Palette;

Windmill windmill;

void setup() {
  size(400, 400);
  windmill = new Windmill();
  
  //for(Palette val : Palette.values())
}

void draw() {
  background(Palette.SKY_BLUE);

  fill(Palette.OLIVE_DRAB);
  rect(0, 2*height/3, width, height);

  noStroke();
  fill(Palette.AZURE_LIGHT);
  ellipse(width/4, height/5, 150, 75);
  ellipse(width/2, height/7, 100, 50);

  windmill.show();
}
