class WyjdzR{
  PImage wyjdz,wyjdz2;
  public boolean myszkaNa;
  WyjdzR(){
    wyjdz = loadImage("menuWyjdz.png");
    wyjdz2 = loadImage("menuWyjdz2.png");
  }
  void rysuj(){
    rectMode(CORNER);
    if(myszkaNa){
      image(wyjdz2,450,500);
    }
    else{
      image(wyjdz,450,500);
    }
  }
  void myszkaNad(int x,int y){
    if(x>300&&x<600&&y>468&&y<532){
      myszkaNa=true;
    }
    else{
      myszkaNa=false;
    }
  }
  public void czyWcisnety(){
    if(myszkaNa){karta=0;}
  }
}
  
  
  
  
  
  
  