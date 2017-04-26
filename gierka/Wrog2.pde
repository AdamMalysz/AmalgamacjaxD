class Wrog2{
  PImage wrog2;
  int los;
  int y = -80;
  int[] skad = {42,150,450};
  Wrog2(){
    wrog2 = loadImage("mocek.jpg"); 
  }
  void skadIdzie(int x){
    los=x; 
  }
  void rysuj(){
    image(wrog2,skad[los],y,64,64);
    
    
  }
  void idzie(){
    if(los==1){    //tu wychodzi z lewej
      if(y<200&&skad[los]==150){y++;}
      else if(y==200&&skad[los]<450){skad[los]++;}
      else if(y<400&&skad[los]==450){y++;}
      else if(y==400&&skad[los]>150){skad[los]--;}
      else if(y<700&&skad[los]==150){y++;}
    }
    if(los==2){    //tu wychodzi z prawej
      if(y<200&&skad[los]==450){y++;}
      else if(y==200&&skad[los]>150){skad[los]--;}
      else if(y<400&&skad[los]==150){y++;}
      else if(y==400&&skad[los]<450){skad[los]++;}
      else if(y<700&&skad[los]==450){y++;}
    }
  }
}