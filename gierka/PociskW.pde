class PociskW{
  private int x;
  private int y;
  boolean trafiony;
  PociskW(int tx, int ty){
    x=tx;
    y=ty;
  }
  void rysuj(){
    image(pociskWrog,x,y);
  }
  void przesun(){
    y+=5;
  }
  int getKoordyX(){
    return x;
  }
  int getKoordyY(){
    return y; 
  }
  //else if(x>x-32 && x()<x+32 && y>y-32 && y<y+32){
  //    Wybuch numerWybuchu = new Wybuch(gracz.getKoordyX(), gracz.getKoordyY());    //miałem oczywiście to zbugowane, zobacz czy u ciebie to będzie działało (kolizja wrogiego pocisku z graczem)
  //    wybuchy.add(numerWybuchu);
  //    uderzGracza();
  //  }
}