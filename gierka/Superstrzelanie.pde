class Superstrzelanie extends Powerup {
  void kolizja() {
    czasTrwania=200;    
    maxCooldownBroni=5;
    zebrany = true;
    powerupDzwiek.play();
  }
  void aktualizuj() {
    if (!zebrany) {
      image(superstrzelanieObrazek, x, y);
      if (gracz.getKoordyX()>x-32 && gracz.getKoordyX()<x+32 && 
        gracz.getKoordyY()>y-32 && gracz.getKoordyY()<y+32  && iloscHP>0) {  
        kolizja();
      }
    }
    if (czasTrwania<0) {
      maxCooldownBroni=50;
    }
  }
}