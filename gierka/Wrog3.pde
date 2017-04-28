class Wrog3{
  PImage wrog3;
  int los;
  int y = -80;
  int x = (int)random(64,600);
  Wrog3(){
    wrog3 = loadImage("wrog3.png"); 
  }
  void rysuj(){
    image(wrog3,x,y,64,64);
  }
  void idzie(){
    y=y+4; 
  }
  int getKoordyX(){
    return x;
  }
  int getKoordyY(){
    return y;
  }
}