class Wrog5 extends Wrog {
  PImage wrog5P;
  private int losB=(int)random(2);
  private boolean gdzie;
  Wrog5(int wx, int wy, int swy) {
    super(wx, wy, swy);
    wrog5P = loadImage("kometaZP.png");
  } 
  void rysuj() {
    image(wrog5P, wrogX, wrogY);
    if (wrogX>672) {
      wrogY = (int)random(-640, 0);
      wrogX = (int)random(-640, 0);
      losB=(int)random(2);
    }
  }
  void idzie() {
    if (losB==0) {  //tu idzie z prawej
      if (!gdzie&&wrogX<600) {
        wrogX=wrogX+v;
        wrogY=wrogY+v;
        gdzie=false;
      } else {
        gdzie=true;
      }
      if (gdzie&&wrogX>40) {
        wrogX=wrogX+v;
        wrogY=wrogY+v;
      } else {
        gdzie=false;
      }
    }
    if (losB==1) {  //tu idzie z lewej
      if (!gdzie&&wrogX>40) {
        wrogX=wrogX+v;
        wrogY=wrogY+v;
        gdzie=false;
      } else {
        gdzie=true;
      }
      if (gdzie&&wrogX<600) {
        wrogX=wrogX+v;
        wrogY=wrogY+v;
      } else {
        gdzie=false;
      }
    }
  }
}