class Pocisk{
  int x;
  int y;
  boolean trafiony = false;
  Pocisk(int tx, int ty){
    x=tx;
    y=ty;
  }
  void rysuj(){
    image(pociskGracza,x,y);
  }
  void przesun(){
    y-=15;
  }
  boolean sprawdzKolizje(){
    if(wrog1.getKoordyX()>x-32 && wrog1.getKoordyX()<x+32 && 
    wrog1.getKoordyY()>y-32 && wrog1.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog1.getKoordyX(), wrog1.getKoordyY());
      wrog1 = new Wrog1();
      wybuchy.add(numerWybuchu);
      trafiony=true;
      return true;
    }
    else if(wrog2.getKoordyX()>x-32 && wrog2.getKoordyX()<x+32 && 
    wrog2.getKoordyY()>y-32 && wrog2.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog2.getKoordyX(), wrog2.getKoordyY());
      wybuchy.add(numerWybuchu);
      wrog2 = new Wrog2();
      trafiony=true;
      return true;
    }
    else if(wrog3.getKoordyX()>x-32 && wrog3.getKoordyX()<x+32 && 
    wrog3.getKoordyY()>y-32 && wrog3.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog3.getKoordyX(), wrog3.getKoordyY());
      wybuchy.add(numerWybuchu);
      wrog3 = new Wrog3();
      trafiony=true;
      return true;
    }
    else if(wrog4.getKoordyX()>x-32 && wrog4.getKoordyX()<x+32 && 
    wrog4.getKoordyY()>y-32 && wrog4.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog4.getKoordyX(), wrog4.getKoordyY());
      wybuchy.add(numerWybuchu);
      wrog4 = new Wrog4();
      trafiony=true;
      return true;
    }
    return false;
  }
}