class Leczenie extends Powerup {
  void kolizja() {
    iloscHP+=1;
    //powerupDzwiek.play();
    zebrany = true;
  }
  void aktualizuj() {
    if (!zebrany) {
      image(leczenieObrazek, x, y);
      if (gracz.getKoordyX()>x-32 && gracz.getKoordyX()<x+32 && 
        gracz.getKoordyY()>y-32 && gracz.getKoordyY()<y+32  && iloscHP>0) {  
        kolizja();
      }
    }
  }
}
//zwraca graczowi jedno życie