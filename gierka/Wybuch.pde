class Wybuch {
  int klatkaWybuchu;
  int x;
  int y;
  Wybuch(int tx, int ty) {
    x=tx;
    y=ty;
    wybuchDzwiek.play();
  }
  void rysuj() {
    if (klatkaWybuchu<15) {
      image(wybuchAnimacja[klatkaWybuchu/5], x, y);
      klatkaWybuchu++;
    }
  }
}