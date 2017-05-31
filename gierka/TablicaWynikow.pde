class TablicaWynikow {
  private int[] wyniki = int(loadStrings("wyniki.txt"));
  PImage tlo;
  TablicaWynikow() {
    tlo = loadImage("tlo.png");
    wyniki=reverse(sort(wyniki));
  }
  void rysuj() {
    background(tlo);
    wyjdzR.rysuj();
    wyjdzR.myszkaNad(mouseX, mouseY);

    textSize (32);
    text("Tablica rekordów:", 10, 150);
    text("#1) "+wyniki[0], 10, 260);
    text("#2) "+wyniki[1], 10, 320);          //zapisane w pliku tekstowym największe wyniki graczy
    text("#3) "+wyniki[2], 10, 380);
    text("#4) "+wyniki[3], 10, 440);
    text("#5) "+wyniki[4], 10, 500);
  }
}