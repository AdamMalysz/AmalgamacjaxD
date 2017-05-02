class Wrog2{
  PImage wrog2;
  int los;
  int i = 0;
  int y = -80;
  int[] skad = {42,150,450};
  Wrog2(){
    wrog2 = loadImage("mocek.jpg"); 
  }
  void jakDaleko(int py){
    while (i==0){
      y=py;
      i++;
    } 
  }
  void skadIdzie(int x){  //albo z prawej(1) albo z lewej(2)
    los=x; 
  }
  void rysuj(){
    image(wrog2,skad[los],y,64,64);
    if(y>672){
      y = -80;
    }
    
  }
  void idzie(int vx, int vy){
    if(los==1){    //tu wychodzi z lewej
      if(y<200&&skad[los]==150){y=y+vy;}
      else if(y==200&&skad[los]<450){skad[los]=skad[los]+vx;}
      else if(y<400&&skad[los]==450){y=y+vy;}
      else if(y==400&&skad[los]>150){skad[los]=skad[los]-vx;}
      else if(y<700&&skad[los]==150){y=y+vy;}
    }
    if(los==2){    //tu wychodzi z prawej
      if(y<200&&skad[los]==450){y=y+vy;}
      else if(y==200&&skad[los]>150){skad[los]=skad[los]-vx;}
      else if(y<400&&skad[los]==150){y=y+vy;}
      else if(y==400&&skad[los]<450){skad[los]=skad[los]+vx;}
      else if(y<700&&skad[los]==450){y=y+vy;}
    }
  }
  int getKoordyX(){
    return skad[los];
  }
  int getKoordyY(){
    return y;
  }
}