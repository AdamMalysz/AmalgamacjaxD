class Superstrzelanie extends Powerup {
  void kolizja() {
    czasTrwania=200;    
    maxCooldownBroni=5;
    zebrany = true;
  }
  void aktualizuj() {
    if (!zebrany && iloscHP>0) {
      image(superstrzelanieObrazek, x, y);
      if (gracz.getKoordyX()>x-32 && gracz.getKoordyX()<x+32 && 
        gracz.getKoordyY()>y-32 && gracz.getKoordyY()<y+32) {  
        kolizja();
      }
    }
    if (czasTrwania<0) {
      maxCooldownBroni=50;
    }
  }
}