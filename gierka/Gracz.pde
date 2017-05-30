private boolean miga;
private int x,y;
class Gracz{  
  Gracz(){
    miga=false;
  }
  void rysuj(int tx, int ty){
    if(tx>16 && tx<624){
      x=tx;
    }
    if(ty>16&& ty<634){
    y=ty;
    }
    if(!miga){
        if(x<pmouseX){
          image(statekAnimacja[0],x,y);
        }
        else if(x>pmouseX){
          image(statekAnimacja[1],x,y);
        }
        else {
          image(statekAnimacja[2],x,y);
        }
    }
    if(mousePressed && cooldownBroni<0){
      Pocisk numerPocisku = new Pocisk(x, y);
      pociski.add(numerPocisku);
      cooldownBroni=maxCooldownBroni;
      if(pociski.size()>25){
        pociski.remove(0);
      }
    }           
  }
  int getKoordyX(){
    return x;
  }
  int getKoordyY(){
    return y;
  }
  void miganie(int czasMigania){
    if(czasMigania%3==0 && czasMigania>0)miga=true;
    else miga=false;
  }
}
void sprawdzKolizjeZGraczem(){ 
    if(wrog1.getKoordyX()>x-32 && wrog1.getKoordyX()<x+32 && 
    wrog1.getKoordyY()>y-32 && wrog1.getKoordyY()<y+32){  
      uderzGracza();  
    }
    else if(wrog2.getKoordyX()>x-32 && wrog2.getKoordyX()<x+32 && 
    wrog2.getKoordyY()>y-32 && wrog2.getKoordyY()<y+32){
      uderzGracza();
    }
    else if(wrog3.getKoordyX()>x-32 && wrog3.getKoordyX()<x+32 && 
    wrog3.getKoordyY()>y-32 && wrog3.getKoordyY()<y+32){
      uderzGracza();
    }
    else if(wrog4.getKoordyX()>x-32 && wrog4.getKoordyX()<x+32 && 
    wrog4.getKoordyY()>y-32 && wrog4.getKoordyY()<y+32){
      uderzGracza();

    }
  }