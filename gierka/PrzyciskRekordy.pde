class Rekordy{
  PImage Rekordy,Rekordy2;
  private boolean myszkaNa;
  Rekordy(){
    Rekordy = loadImage("menuRekordy.png");
    Rekordy2 = loadImage("menuRekordy2.png");
  }
  void rysuj(){
    rectMode(CORNER);
    if(myszkaNa){
      image(Rekordy2,450,400);
    }
    else{
      image(Rekordy,450,400);
    }
  }
  void myszkaNad(int x,int y){
    if(x>300&&x<600&&y>368&&y<432){
      myszkaNa=true;
    }
    else{
      myszkaNa=false;
    }
  }
  void czyWcisnety(){
    if(myszkaNa){karta=2;}
  }
}