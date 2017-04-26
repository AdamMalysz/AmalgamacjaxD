class Pocisk{
  int x;
  int y;
  Pocisk(int tx, int ty){
    x=tx;
    y=ty;
  }
  void rysuj(){
    image(pociskGracza,x,y);
  }
  void przesun(){
    y-=15;
  }
}