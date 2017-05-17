class Powerup{
  int x,y =700;
  int czasTrwania;
  boolean zebrany;
  
  void rysuj(){
    y+=5;
    czasTrwania--;
  }
  void spawnuj(){
    x=int(random(32,608));
    zebrany=false;
    y=-32;
  }
}
  