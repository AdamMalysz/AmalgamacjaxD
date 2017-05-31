class HP {
  void rysuj() {
    image(znaczekHP, 40, 600);
    for (int i=0; i<iloscHP; i++) {
      image(licznikHP, 80+(i*40), 600);
    }
  }
}
//życie gracza