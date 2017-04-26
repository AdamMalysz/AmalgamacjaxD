class Przycisk{
  PImage nowaGra,nowaGra2;
  private boolean myszkaNa;
  Przycisk(){
    nowaGra = loadImage("menuNowagra.png");
    nowaGra2 = loadImage("menuNowagra2.png");
  }
  void rysuj(){
    if(myszkaNa){
      image(nowaGra2,450,300);
    }
    else{
      image(nowaGra,450,300);
    }
  }
  void myszkaNad(int x,int y){
    if(x>300&&x<600&&y>268&&y<332){
      myszkaNa=true;
    }
    else{
      myszkaNa=false;
    }
  }
  void czyWcisnety(){
    if(myszkaNa){karta=1;}
  }
}