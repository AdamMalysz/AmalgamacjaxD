class Wynik{
  void rysuj(){
    textSize(32);
    text("Twój wynik to: "+punkty, 10 , 30);
    if(punkty>wszystkieWyniki[4]){
    text("Rekord!", 10 , 60);
    }
    textSize(20);
    text("Naciśnij dowolny klawisz by wrócić do menu", 10, 600);
  }
  void zapisz(){    
    wszystkieWyniki[5] = punkty;
    String[] posortowaneWyniki = new String[6];
    posortowaneWyniki=str(sort(wszystkieWyniki));
    posortowaneWyniki=reverse(posortowaneWyniki);
    saveStrings("wyniki.txt", posortowaneWyniki);
  }
}