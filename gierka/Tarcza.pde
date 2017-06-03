class SuperTarcza extends Powerup {
  void kolizja() {   
    zebrany = true;
    tarcza = 300;
    tarcza = 300;
    powerupDzwiek.play();
  }
  void aktualizuj() {
    if (!zebrany && iloscHP>0) {
      image(tarczaObrazek, x, y);
      if (gracz.getKoordyX()>x-32 && gracz.getKoordyX()<x+32 && 
        gracz.getKoordyY()>y-32 && gracz.getKoordyY()<y+32  && iloscHP>0) {  
        kolizja();
      }
    }
  }
}