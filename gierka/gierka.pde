//import processing.sound.*;
//SoundFile strzalGracza, wybuchDzwiek, strzalWroga, powerupDzwiek, klikniety, najechany;

Menu menu;
Przycisk nowaGra;
Przycisk rekordy;
Przycisk wyjdz;
Przycisk wyjdzR;
Gra gra;
Wrogowie wrogowie;
TablicaWynikow tablicaWynikow;
PImage pociskGracza, statekGracza, wybuch, tlo, znaczekHP, licznikHP, pociskWrog, nowyPowerup, superstrzelanieObrazek, leczenieObrazek, tarczaObrazek;
PImage[] wybuchAnimacja = new PImage[3];
PImage[] statekAnimacja = new PImage[3];
PImage[] animacjaTla = new PImage[2];
int cooldownBroni, punkty, animacjaWybuchu, iloscHP, tarcza, maxCooldownBroni, cooldownPowerupow =1000, next, losG, losB;
Gracz gracz = new Gracz();
Wynik wynik = new Wynik();
Superstrzelanie superstrzelanie = new Superstrzelanie(); 
Leczenie leczenie =new Leczenie();
SuperTarcza superTarcza = new SuperTarcza();
HP hp= new HP();
ArrayList <Pocisk> pociski;
ArrayList <Wybuch> wybuchy;
ArrayList <PociskW> pociskiW;
int[] wszystkieWyniki = new int[6];
Wrog1 wrog1;
Wrog2 wrog2;
Wrog3 wrog3;
Wrog4 wrog4, asteroida1, asteroida2;
Wrog5 wrog5;
Tlo tloGra;
public int karta = 0;
void setup() {
  ladujObrazy();
  //ladujDzwieki();
  tloGra = new Tlo(1);
  size(640, 640);
  frameRate(60);
  menu = new Menu();
  gra = new Gra();
  wrogowie = new Wrogowie();
  tablicaWynikow = new TablicaWynikow();
  wyjdzR = new Przycisk(4, 450, 500);
}
void draw() {

  //Sprawdza czy wyświetlać menu, czy grę
  if (karta==0) {
    menu.rysuj();
    nowaGra.myszkaNad(mouseX, mouseY);
    rekordy.myszkaNad(mouseX, mouseY);
    wyjdz.myszkaNad(mouseX, mouseY);
    cursor(ARROW);
  } else if (karta==1) {

    gra.rysuj();

    noCursor();
  } else if (karta==2) {
    tablicaWynikow.rysuj();
    cursor(ARROW);
  } else if (karta==3) {
    exit();
  }
}
void mousePressed() {

  //Sprawdza kliknięcie na przyciski
  if (karta==0) { 
    nowaGra.czyWcisnety();
    rekordy.czyWcisnety();
    wyjdz.czyWcisnety();
  } else if (karta==2) {
    wyjdzR.czyWcisnety();
  }
}
public int losowanieWrog2() {  //losuje albo 150 albo 400 (specialnie dla wroga2)
  losG=(int)random(2);      
  if (losG==0) {
    return 150;
  } else {
    return 450;
  }
}
public void nowaGra() {
  wrog1 = new Wrog1(300, 6, -400);
  wrog2 = new Wrog2(losowanieWrog2(), 9, -560);
  wrog3 = new Wrog3(199, 12, -680);   //arg1 = pozycja X  arg2 = szybkość Y  arg3 = pozycja Y
  wrog4 = new Wrog4(600, 3, -790); 
  asteroida1 = new Wrog4(200, 3, -580); 
  asteroida2 = new Wrog4(400, 3, -1080);
  wrog5 = new Wrog5(-640, 10, -640);
  gra = new Gra();
}
/*public void ladujDzwieki(){
  strzalGracza = new SoundFile(this, "strzalGracza.wav");
  strzalWroga = new SoundFile(this, "strzalWroga.wav");
  wybuchDzwiek = new SoundFile(this, "wybuch.wav");
  powerupDzwiek = new SoundFile(this, "powerup.wav");
  klikniety = new SoundFile(this, "klikniety.wav");
  najechany = new SoundFile(this, "najechany.wav");
}*/
public void ladujObrazy(){
  statekGracza = loadImage("gracz.png");
  pociskWrog = loadImage("wrogPocisk.png");
  wybuch = loadImage("wybuch.png");
  pociskGracza = loadImage("graczPocisk.png"); 
  tlo = loadImage("tlo.png");
  znaczekHP = loadImage("hpZnaczek.png");
  licznikHP = loadImage("hpLicznik.png");
  superstrzelanieObrazek = loadImage("superstrzelanie.png");
  leczenieObrazek = loadImage("leczenie.png");
  tarczaObrazek = loadImage("tarcza.png");
}