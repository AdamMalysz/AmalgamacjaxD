class Wrog{
  int v,wrogX,wrogY;
  int i = 0;
  Wrog(int skadX, int szybY, int skadY){
    wrogX=skadX;
    wrogY=skadY;
    v=szybY;
  }
  int getKoordyX(){
    return wrogX;
  }
  int getKoordyY(){
    return wrogY;
  }
  
}