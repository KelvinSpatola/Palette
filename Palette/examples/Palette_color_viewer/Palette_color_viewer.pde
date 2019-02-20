import overmind.Palette;

String[] colorNames;
color[]  colorValue;

void setup() {
  size(580, 600);
  colorNames = Palette.list();
  colorValue = Palette.values();
}

void draw() {
  background(Palette.WHITE);
  float x = 0, y = 0, w = 20;

  strokeWeight(.3);
  for (color c : Palette.values()) {
    fill(c);
    square(x, y, w);

    x += w;
    if (x+w > width) {
      x = 0;
      y += w;
    }
  }

  int index = int(mouseX / w) + int(mouseY / w) * int(width / w);
  
  if (index < Palette.list().length) { // otherwise we get a NPE
    fill(0);
    text(colorNames[index], mouseX, mouseY);

    int r = (int)red(colorValue[index]);
    int g = (int)green(colorValue[index]);
    int b = (int)blue(colorValue[index]);
    println("color("+r+", "+g+", "+b+")");
  }
}
