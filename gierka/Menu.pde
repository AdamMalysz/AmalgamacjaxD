class Menu {
  PImage menu;
  Menu() {
     menu = loadImage("menuTlo.png");
     cursor();
     
  nowaGra = new Przycisk(1,450,300);
  rekordy = new Przycisk(2,450,400);
  wyjdz = new Przycisk(3,450,500);
  }
  void rysuj() {
    background(menu);
    nowaGra.rysuj();
    rekordy.rysuj();
    wyjdz.rysuj();
  }
}