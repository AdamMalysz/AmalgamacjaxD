class Wrog2 extends Wrog {
  PImage wrog2;
  private int v, cooldown, losB=(int)random(2);
  boolean gdzie;
  Wrog2(int wx, int wy, int woy) {
    super(wx, wy, woy);
    wrog2 = loadImage("wrog2.png");
  }
  void rysuj() {
    image(wrog2, wrogX, wrogY, 64, 64);
    cooldown++;
    println(wrogX, wrogY, gdzie);
    if (wrogY>672) {
      wrogY = -80;
      wrogX = (int)random(64, 600);
    }
    if (cooldown==50) {
      cooldown=0;
      PociskW numerPocisku = new PociskW(wrogX, wrogY);
      pociskiW.add(numerPocisku);
    }
  }
  void idzie() {
    println(gdzie);
    if (losB==0) {  //tu idzie z prawej
      if (!gdzie&&wrogX<420) {
        wrogX++;
        wrogY++;
        gdzie=false;
      } else {
        gdzie=true;
      }
      if (gdzie&&wrogX>240) {
        wrogX--;
        wrogY++;
      } else {
        gdzie=false;
      }
    }
    if (losB==1) {  //tu idzie z lewej
      if (!gdzie&&wrogX>240) {
        wrogX--;
        wrogY++;
        gdzie=false;
      } else {
        gdzie=true;
      }
      if (gdzie&&wrogX<420) {
        wrogX++;
        wrogY++;
      } else {
        gdzie=false;
      }
    }
  }
}