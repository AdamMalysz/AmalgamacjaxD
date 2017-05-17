class Wrog2{
  PImage wrog2;
  int los,v,cooldown;
  int i = 0;
  int y = -80;
  int[] skad = {150,450};
  Wrog2(int szybY, int skadY, int skadX){
    wrog2 = loadImage("wrog2.png"); 
    v=szybY;
    y=skadY;
    los=skadX;
  }
  void rysuj(){
    image(wrog2,skad[los],y,64,64);
    cooldown++;
    if(y>672){
      y = -80;
      x = (int)random(64,600); 
    }
    if(cooldown==50){
      cooldown=0;
      PociskW numerPocisku = new PociskW(getKoordyX(),getKoordyY());
      pociskiW.add(numerPocisku);
      
    }
  }
  void idzie(){
    if(los==0){    //tu wychodzi z lewej
      if(y<200&&skad[los]==150){y=y+v;}
      else if(y==200&&skad[los]<450){skad[los]=skad[los]+2+v;}
      else if(y<400&&skad[los]==450){y=y+v;}
      else if(y==400&&skad[los]>150){skad[los]=skad[los]-2-v;}
      else if(y<700&&skad[los]==150){y=y+v;}
    }
    if(los==1){    //tu wychodzi z prawej
      if(y<200&&skad[los]==450){y=y+v;}
      else if(y==200&&skad[los]>150){skad[los]=skad[los]-v;}
      else if(y<400&&skad[los]==150){y=y+v;}
      else if(y==400&&skad[los]<450){skad[los]=skad[los]+v;}
      else if(y<700&&skad[los]==450){y=y+v;}
    }
  }
  int getKoordyX(){
    return skad[los];
  }
  int getKoordyY(){
    return y;
  }
}