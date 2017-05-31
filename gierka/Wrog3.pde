class Wrog3 extends Wrog {
  PImage wrog3;
  Wrog3(int wx, int wy, int swy) {
    super(wx, wy, swy);
    wrog3 = loadImage("wrog3.png");
  } 
  void rysuj() {
    image(wrog3, wrogX, wrogY);
    if (wrogY>672) {
      wrogY = -80;
      wrogX = (int)random(64, 600);
    }
  }
  void idzie() {
    wrogY=wrogY+v;
  }
}