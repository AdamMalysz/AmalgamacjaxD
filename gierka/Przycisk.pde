class Przycisk{
  PImage obrazek, obrazek2;
  int x,y,rodzaj;
  private boolean myszkaNa;
  Przycisk(int tz,int tx,int ty){
    x=tx;
    y=ty;
    rodzaj=tz;
    switch(rodzaj){
      case 1: obrazek = loadImage("menuNowagra.png"); obrazek2 = loadImage("menuNowagra2.png"); break;
      case 2: obrazek = loadImage("menuRekordy.png"); obrazek2 = loadImage("menuRekordy2.png"); break;
      case 3: obrazek = loadImage("menuWyjdz.png"); obrazek2 = loadImage("menuWyjdz2.png"); break; 
      case 4: obrazek = loadImage("menuWyjdz.png"); obrazek2 = loadImage("menuWyjdz2.png"); break; 
    }
  }
  void rysuj(){
    if(myszkaNa){
      image(obrazek2,x,y);
    }
    else{
      image(obrazek,x,y);
    }
  }
  void myszkaNad(int tx,int ty){
    if(tx>x-obrazek.width/2 && tx<x+obrazek.width/2 && ty>y-obrazek.height/2 && ty<y+obrazek.height/2){
      myszkaNa=true;
    }
    else{
      myszkaNa=false;
    }
  }
  void czyWcisnety(){
     switch(rodzaj){
      case 1: if(myszkaNa)karta=1; break;
      case 2: if(myszkaNa)karta=2; break;
      case 3: if(myszkaNa)karta=3; break;
      case 4: if(myszkaNa)karta=0; break;
    }
  }
}