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
}