class Pocisk{
  private int x;
  private int y;
  private boolean trafiony = false;
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
  void sprawdzKolizjeZWrogami(){ 
    if(wrog1.getKoordyX()>x-32 && wrog1.getKoordyX()<x+32 && 
    wrog1.getKoordyY()>y-32 && wrog1.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog1.getKoordyX(), wrog1.getKoordyY());
      wrog1 = new Wrog1((int)random(50,600),6,-80);
      wybuchy.add(numerWybuchu);
      trafiony=true;
      punkty+=20;
    }
    else if(wrog2.getKoordyX()>x-32 && wrog2.getKoordyX()<x+32 && 
    wrog2.getKoordyY()>y-32 && wrog2.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog2.getKoordyX(), wrog2.getKoordyY());
      wybuchy.add(numerWybuchu);
      wrog2 = new Wrog2(losowanieWrog2(),9,-80);
      trafiony=true;
      punkty+=30;
    }
    else if(wrog3.getKoordyX()>x-32 && wrog3.getKoordyX()<x+32 && 
    wrog3.getKoordyY()>y-32 && wrog3.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog3.getKoordyX(), wrog3.getKoordyY());
      wybuchy.add(numerWybuchu);
      wrog3 = new Wrog3((int)random(50,600),12,-80);
      trafiony=true;
      punkty+=25;
    }
    else if(wrog4.getKoordyX()>x-32 && wrog4.getKoordyX()<x+32 && 
    wrog4.getKoordyY()>y-32 && wrog4.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog4.getKoordyX(), wrog4.getKoordyY());
      wybuchy.add(numerWybuchu);
     // wrog4 = new Wrog4((int)random(50,600),3,-80);
      trafiony=true;
     // punkty+=10;
    }
    else if(asteroida1.getKoordyX()>x-32 && asteroida1.getKoordyX()<x+32 && 
    asteroida1.getKoordyY()>y-32 && asteroida1.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(asteroida1.getKoordyX(), asteroida1.getKoordyY());
      wybuchy.add(numerWybuchu);
      trafiony=true;
    }
    else if(asteroida2.getKoordyX()>x-32 && asteroida2.getKoordyX()<x+32 && 
    asteroida2.getKoordyY()>y-32 && asteroida2.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(asteroida2.getKoordyX(), asteroida2.getKoordyY());
      wybuchy.add(numerWybuchu);
      trafiony=true;
    }
    else if(wrog5.getKoordyX()>x-32 && wrog5.getKoordyX()<x+32 && 
    wrog5.getKoordyY()>y-32 && wrog5.getKoordyY()<y+32){
      Wybuch numerWybuchu = new Wybuch(wrog5.getKoordyX(), wrog5.getKoordyY());
      wybuchy.add(numerWybuchu);
      wrog5 = new Wrog5(-640,10,-640);
      trafiony=true;
      punkty+=125;
    }
  }
}