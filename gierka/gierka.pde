Menu menu;
Przycisk nowaGra;
Przycisk rekordy;
Przycisk wyjdz;
Przycisk wyjdzR;
Gra gra;
Wrogowie wrogowie;
TablicaWynikow tablicaWynikow;
PImage pociskGracza,statekGracza,wybuch,tlo,znaczekHP,licznikHP,pociskWrog,nowyPowerup,superstrzelanieObrazek,leczenieObrazek,tarczaObrazek;
PImage[] wybuchAnimacja = new PImage[3];
PImage[] statekAnimacja = new PImage[3];
PImage[] animacjaTla = new PImage[2];
int cooldownBroni,punkty,animacjaWybuchu,iloscHP,tarcza,maxCooldownBroni,cooldownPowerupow,next,losG,losB;
Gracz gracz = new Gracz();
Wynik wynik = new Wynik();
Superstrzelanie superstrzelanie = new Superstrzelanie(); 
Leczenie leczenie =new Leczenie();
SuperTarcza superTarcza = new SuperTarcza();
HP hp= new HP();
ArrayList <Pocisk> pociski;
ArrayList <Wybuch> wybuchy;
ArrayList <Wrog1> wrog1Lista = new ArrayList<Wrog1>();
ArrayList <Wrog2> wrog2Lista = new ArrayList<Wrog2>();
ArrayList <Wrog3> wrog3Lista = new ArrayList<Wrog3>();
ArrayList <Wrog4> wrog4Lista = new ArrayList<Wrog4>();
ArrayList <PociskW> pociskiW;
int[] wszystkieWyniki = new int[6];
Wrog1 wrog1;
Wrog2 wrog2;
Wrog3 wrog3;
Wrog4 wrog4;
Tlo tloGra;
public int karta = 0;
void setup(){
  wrog1 = new Wrog1(300,6,-80);
  wrog2 = new Wrog2(losowanieWrog2(),9,-80);
  wrog3 = new Wrog3(199,12,-80);   //arg1 = pozycja X  arg2 = szybkość Y  arg3 = pozycja Y
  wrog4 = new Wrog4(600,3,-80); 
  tloGra = new Tlo(3);
  size(640,640);
  frameRate(60);
  menu = new Menu();
  gra = new Gra();
  wrogowie = new Wrogowie();
  tablicaWynikow = new TablicaWynikow();
  wyjdzR = new Przycisk(4,450,500);
}
void draw(){
  
  //Sprawdza czy wyświetlać menu, czy grę
  if(karta==0){
    menu.rysuj();
    nowaGra.myszkaNad(mouseX,mouseY);
    rekordy.myszkaNad(mouseX,mouseY);
    wyjdz.myszkaNad(mouseX,mouseY);
    cursor(ARROW);
  }
  else if(karta==1){
    gra.rysuj();
    noCursor();
  }
  else if(karta==2){
    tablicaWynikow.rysuj();
    cursor(ARROW);
  }
  else if(karta==3){
    exit();
  }  
}
void mousePressed(){
  
  //Sprawdza kliknięcie na przyciski
  if(karta==0){ 
    nowaGra.czyWcisnety();
    rekordy.czyWcisnety();
    wyjdz.czyWcisnety();
  }
  else if(karta==2){
    wyjdzR.czyWcisnety();
  }
}
public int losowanieWrog2(){  //losuje albo 150 albo 400 (specialnie dla wroga2)
  losG=(int)random(2);      
  if(losG==0){return 150;}
  else{return 400;}
}



  