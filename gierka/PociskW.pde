class PociskW{
  int x;
  int y;
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