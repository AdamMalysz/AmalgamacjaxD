class SuperTarcza extends Powerup {
  void kolizja() {   
    zebrany = true;
    tarcza = 300;
    tarcza = 300;
  }
  void aktualizuj() {
    if (!zebrany) {
      image(tarczaObrazek, x, y);
      if (gracz.getKoordyX()>x-32 && gracz.getKoordyX()<x+32 && 
        gracz.getKoordyY()>y-32 && gracz.getKoordyY()<y+32) {  
        kolizja();
      }
    }
  }
}