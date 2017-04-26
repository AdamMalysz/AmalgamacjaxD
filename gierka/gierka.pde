Menu menu;
Przycisk nowaGra;
Rekordy rekordy;
Wyjdz wyjdz;
WyjdzR wyjdzR;
Gra gra;
Wrogowie wrogowie;
TablicaWynikow tablicaWynikow;
Wrog1 wrog1;
Wrog2 wrog2;
Wrog3 wrog3;
Wrog4 wrog4;
PImage pociskGracza,statekGracza,wybuch,tlo,znaczekHP,licznikHP;
PImage[] wybuchAnimacja = new PImage[3];
PImage[] statekAnimacja = new PImage[3];
int cooldownBroni,punkty,animacjaWybuchu,iloscHP,tarcza,cooldownMigania;
Gracz gracz = new Gracz();
Wynik wynik = new Wynik();
HP hp= new HP();
ArrayList <Pocisk> pociski;
ArrayList <Wybuch> wybuchy;
int[] wszystkieWyniki = new int[6];


public int karta = 0;
void setup(){
  
  size(640,640);
  frameRate(60);
  menu = new Menu();
  nowaGra = new Przycisk();
  rekordy = new Rekordy();
  wyjdz = new Wyjdz();
  gra = new Gra();
  wrogowie = new Wrogowie();
  wrog1 = new Wrog1();
  wrog2 = new Wrog2();
  wrog3 = new Wrog3();
  wrog4 = new Wrog4();
  tablicaWynikow = new TablicaWynikow();
  wyjdzR = new WyjdzR();
}
void draw(){
  
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
  if(karta==0){ //nie chce mi sie sprawdzac czy ten "if" potrzebny
    nowaGra.czyWcisnety();
    rekordy.czyWcisnety();
    wyjdz.czyWcisnety();
  }
  else if(karta==2){
    wyjdzR.czyWcisnety();
  }
}
  