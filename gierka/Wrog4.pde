class Wrog4 extends Wrog{
  PImage wrog4;
  Wrog4(int wx, int wy, int swy){
    super(wx,wy,swy);
    wrog4 = loadImage("asteroida.png");
  } 
  void rysuj(){
    image(wrog4,wrogX,wrogY);
    if(wrogY>672){
      wrogY = -80;
      wrogX = (int)random(64,600);
    }
  }
  void idzie(){
    wrogY=wrogY+v; 
  }
}