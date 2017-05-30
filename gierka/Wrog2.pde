class Wrog2 extends Wrog {
  PImage wrog2;
  private int v,cooldown,gdzie=(int)random(2);
  private boolean los;
  Wrog2(int wx, int wy, int woy) {
    super(wx, wy, woy);
    wrog2 = loadImage("wrog2.png");
  }
  void rysuj() {
    image(wrog2, wrogX, wrogY, 64, 64);
    cooldown++;
    println(wrogX,wrogY,gdzie);
    if(wrogY>672){
      wrogY = -80;
      wrogX = (int)random(64,600);
      gdzie=(int)random(2);
    }
    if (cooldown==50) {
      cooldown=0;
      PociskW numerPocisku = new PociskW(wrogX, wrogY);
      pociskiW.add(numerPocisku);
    }
  }
  void idzie() {
    if (gdzie==0) {    //tu wychodzi z lewej
      if (wrogY<200&&wrogX==150) {
        wrogY=wrogY+v;
      } else if (wrogY==200&&wrogX<450) {
        wrogX=wrogX+2+v;
      } else if (wrogY<400&&wrogX==450) {
        wrogY=wrogY+v;
      } else if (wrogY==400&&wrogX>150) {
        wrogX=wrogX-2-v;
      } else if (wrogY<700&&wrogX==150) {
        wrogY=wrogY+v;
      }
    }
    if (gdzie==1) {    //tu wychodzi z prawej
      if (wrogY<200&&wrogX==450) {
        wrogY=wrogY+v;
      } else if (wrogY==200&&wrogX>150) {
        wrogX=wrogX-v;
      } else if (wrogY<400&&wrogX==150) {
        wrogY=wrogY+v;
      } else if (wrogY==400&&wrogX<450) {
        wrogX=wrogX+v;
      } else if (wrogY<700&&wrogX==450) {
        wrogY=wrogY+v;
      }
    }
  }
}