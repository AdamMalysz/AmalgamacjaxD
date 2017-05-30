class Tlo{
  private int szybkosc,tlo1X,tlo2X,tlo1Y=320,tlo2Y=320; 
  PImage tloGra;
  Tlo(int v){
    szybkosc=v; 
    tloGra = loadImage("tloGra.png");
    animacjaTla[0]=(tloGra.get(640,0,640,640));
    animacjaTla[1]=(tloGra.get(640,640,640,640));
  }
  void rysuj(){
    imageMode(CORNER);
    image(animacjaTla[0],tlo1X,tlo1Y);
    image(animacjaTla[0],tlo2X,tlo2Y);
    tlo1Y=tlo1Y+szybkosc;
    tlo2Y=tlo2Y+szybkosc;
    if(tlo1Y>640){tlo1Y=-640;}
    if(tlo2Y>640){tlo2Y=-640;}    
  } 
}