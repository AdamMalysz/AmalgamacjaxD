class PociskW{
  private int x;
  private int y;
  boolean trafiony;
  PociskW(int tx, int ty){   
    x=tx;
    y=ty;
    strzalWroga.play();
  }
  void rysuj(){
    image(pociskWrog,x,y);
    sprawdzKolizjeZGraczem();
  }
  void przesun(){
    y+=5;
  }
  int getKoordyX(){    
    return x;
  }
  int getKoordyY(){   
    return y; 
  }
  void sprawdzKolizjeZGraczem(){ 
    if(gracz.getKoordyX()>x-32 && gracz.getKoordyX()<x+32 && 
    gracz.getKoordyY()>y-32 && gracz.getKoordyY()<y+32){  
      uderzGracza();  
    }
  }
}