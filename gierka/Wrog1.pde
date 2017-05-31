class Wrog1 extends Wrog{
  PImage wrog1;
  private int cooldown=0,losB=(int)random(2);
  private boolean gdzie;
  Wrog1(int wx, int wy, int swy){
    super(wx,wy,swy);
    wrog1 = loadImage("wrog1.png");
  } 
  void rysuj(){
    cooldown++;
    image(wrog1,wrogX,wrogY);
    
    if(wrogY>672){
      wrogY = -80;
      wrogX = (int)random(64,600);
      losB=(int)random(2);
    }
    if (cooldown==50) {
      cooldown=0;
      PociskW numerPocisku = new PociskW(wrogX, wrogY); //nie pamiętam jak zrobić żeby strzelali
      pociskiW.add(numerPocisku);
    }
  }
  void idzie(){
    if(losB==0){  //tu idzie z prawej
      if(!gdzie&&wrogX<600){
        wrogX++;
        wrogY++;
        gdzie=false;
      }
      else{gdzie=true;}
      if(gdzie&&wrogX>40){
        wrogX--;
        wrogY++;
      }
      else{gdzie=false;}
   }
    if(losB==1){  //tu idzie z lewej
      if(!gdzie&&wrogX>40){
        wrogX--;
        wrogY++;
        gdzie=false;
      }
      else{gdzie=true;}
      if(gdzie&&wrogX<600){
        wrogX++;
        wrogY++;
      }
      else{gdzie=false;}
    }
  }
}