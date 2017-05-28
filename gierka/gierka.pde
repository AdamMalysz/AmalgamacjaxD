Menu menu;
Przycisk nowaGra;
Przycisk rekordy;
Przycisk wyjdz;
Przycisk wyjdzR;
Gra gra;
Wrogowie wrogowie;
TablicaWynikow tablicaWynikow;
Wrog1 wrog1;
Wrog2 wrog2;
Wrog3 wrog3;
Wrog4 wrog4;
PImage pociskGracza,statekGracza,wybuch,tlo,znaczekHP,licznikHP,pociskWrog,nowyPowerup,superstrzelanieObrazek,leczenieObrazek,tarczaObrazek;
PImage[] wybuchAnimacja = new PImage[3];
PImage[] statekAnimacja = new PImage[3];
int cooldownBroni,punkty,animacjaWybuchu,iloscHP,tarcza,maxCooldownBroni,cooldownPowerupow;
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


public int karta = 0;
void setup(){
  
  size(640,640);
  frameRate(60);
  menu = new Menu();
  
  gra = new Gra();
  wrogowie = new Wrogowie();
  wrog1 = new Wrog1();
  wrog2 = new Wrog2(2,-80,1);
  wrog3 = new Wrog3(400,10,-80);   //zrobiłem żeby dostawali pozycję X i Y i szybkośc Y w konstruktorze
  wrog4 = new Wrog4(250,6,-80);
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
  