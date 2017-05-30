class Wrog2 extends Wrog {
  PImage wrog2;
  int v,cooldown;
  Wrog2(int wx, int wy, int woy) {
    super(wx, wy, woy);
    wrog2 = loadImage("wrog2.png");
  }
  void rysuj() {
    image(wrog2, wrogX, wrogY, 64, 64);
    cooldown++;
    println(wrogX,wrogY,losB);
    if (cooldown==50) {
      cooldown=0;
      PociskW numerPocisku = new PociskW(wrogX, wrogY);
      pociskiW.add(numerPocisku);
    }
  }
  void idzie() {
    if (losowanieWrog2()==150) {    //tu wychodzi z lewej
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
    if (losowanieWrog2()==400) {    //tu wychodzi z prawej
      if (y<200&&wrogX==450) {
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