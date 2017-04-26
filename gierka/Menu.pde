class Menu {
  PImage menu;
  Menu() {
     menu = loadImage("menuTlo.png");
     cursor();
  }
  void rysuj() {
    background(menu);
    nowaGra.rysuj();
    rekordy.rysuj();
    wyjdz.rysuj();
  }
}