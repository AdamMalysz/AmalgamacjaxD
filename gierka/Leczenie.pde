class Leczenie extends Powerup {
  void kolizja() {
    iloscHP+=1;
    zebrany = true;
  }
  void aktualizuj() {
    if (!zebrany && iloscHP>0) {
      image(leczenieObrazek, x, y);
      if (gracz.getKoordyX()>x-32 && gracz.getKoordyX()<x+32 && 
        gracz.getKoordyY()>y-32 && gracz.getKoordyY()<y+32) {  
        kolizja();
      }
    }
  }
}
//zwraca graczowi jedno życie