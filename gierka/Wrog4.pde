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
  }
  void idzie(){
    y++; 
  }
}