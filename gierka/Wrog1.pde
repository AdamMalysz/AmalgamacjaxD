class Wrog1{
  PImage wrog1;
  int los;
  int i = 0;
  int y = -80;
  int[] skad = {42,100,500};
  boolean strona=false;
  Wrog1(){
    wrog1 = loadImage("wrog1.png"); 
  }
  void jakDaleko(int py){
    while (i==0){
      y=py;
      i++;
    } 
  }
  void skadIdzie(int x){ //albo z prawej(1) albo z lewej(2)
    los=x; 
  }
  void jakSzybko(){
    
  }
  void rysuj(){
    image(wrog1,skad[los],y,64,64);
    //println(skad[los],y);
    if(y>672){
      y = -80;
    }
  }
  void idzie(){ //z lewej
    if(los==1){
      if(y+skad[los]<750&&strona==false){
        skad[los]++;
        y++;
        if(skad[los]+y>=750){strona=true;}
      }
      if(y+skad[los]>250&&strona==true){
        skad[los]--;
        y++;
        if(skad[los]+y<250){strona=false;}
      }
    }
    if(los==2){ //z prawej
      if(skad[los]>150&&strona==false){
        skad[los]--;
        y++;
        if(skad[los]<=150){strona=true;}   // nie dotykaj (it just works)
      }
      if(skad[los]<750&&strona==true){
        skad[los]++;
        y++;
        if(skad[los]>750){strona=false;}
      }
    }
  }
  int getKoordyX(){
    return skad[los];
  }
  int getKoordyY(){
    return y;
  }
}