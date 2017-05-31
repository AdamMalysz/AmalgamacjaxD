class Tlo {
  private int szybkosc, tlo1X=320, tlo2X=320, tlo1Y=320, tlo2Y=-320; 
  PImage tloGra;
  Tlo(int v) {
    szybkosc=v; 
    tloGra = loadImage("tloGra.png");
    animacjaTla[0]=(tloGra.get(0, 0, 640, 640));
    animacjaTla[1]=(tloGra.get(0, 640, 640, 640));      //obraz tlo jest dzielony na dwie części
  }
  void rysuj() {
    image(animacjaTla[0], tlo1X, tlo1Y);
    image(animacjaTla[1], tlo2X, tlo2Y);          //dwa obrazki odpowiedzialne za tło idą w dół tworząc iluzję poruszania się do przodu
    tlo1Y=tlo1Y+szybkosc;
    tlo2Y=tlo2Y+szybkosc;
    if (tlo1Y>960) {
      tlo1Y=-320;
    }
    if (tlo2Y>960) {
      tlo2Y=-320;
    }
  }
}