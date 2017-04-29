class Wrog4{
  PImage wrog4;
  int los;
  int y = -80;
  int x = (int)random(64,600);
  Wrog4(){
    wrog4 = loadImage("asteroida.png"); 
  }
  void rysuj(){
    image(wrog4,x,y,64,64);
    if(y>672){
      y = -80;
      x = (int)random(64,600);
    }
  }
  void idzie(){
    y++; 
  }
  int getKoordyX(){
    return x;
  }
  int getKoordyY(){
    return y;
  }
}