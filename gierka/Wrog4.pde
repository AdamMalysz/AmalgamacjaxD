class Wrog4{
  PImage wrog4;
  int los,v,px,x,y;
  int i = 0;
  Wrog4(int skadX, int szybY, int skadY){
    wrog4 = loadImage("asteroida.png"); 
    x=skadX;
    y=skadY;
    v=szybY;
  }
  void rysuj(){
    image(wrog4,x,y,64,64);
    if(y>672){
      y = -80;
      x = (int)random(64,600);
    }
  }
  void idzie(){
    y=y+v; 
  }
  int getKoordyX(){
    return x;
  }
  int getKoordyY(){
    return y;
  }
}