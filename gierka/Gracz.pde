boolean miga;
class Gracz{  
  Gracz(){
    miga=false;
  }
  void rysuj(int x, int y){  
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
  }
  void miganie(int czasMigania){
    if(czasMigania%10==0 && czasMigania>0)miga=true;
    else miga=false;
  }
}