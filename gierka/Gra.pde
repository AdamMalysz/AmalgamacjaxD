class Gra{
PImage tlo;
Gra(){
  String[] lista = (loadStrings("wyniki.txt"));
  for(int i=0;i<=4;i++){
    wszystkieWyniki[i] = int(lista[i]);
  }
  
  maxCooldownBroni=50;
  statekGracza = loadImage("gracz.png");
  pociskWrog = loadImage("wrogPocisk.png");
  statekAnimacja[0] =(statekGracza.get(64,0,64,64));
  statekAnimacja[1] =(statekGracza.get(128,0,64,64));
  statekAnimacja[2] =(statekGracza.get(0,0,64,64));
  wybuch = loadImage("wybuch.png");
  wybuchAnimacja[0] =(wybuch.get(0,0,64,64));
  wybuchAnimacja[1] =(wybuch.get(64,0,64,64));
  wybuchAnimacja[2] =(wybuch.get(128,0,64,64));
  pociskGracza = loadImage("graczPocisk.png"); 
  tlo = loadImage("tlo.png");
  znaczekHP = loadImage("hpZnaczek.png");
  licznikHP = loadImage("hpLicznik.png");
  superstrzelanieObrazek = loadImage("superstrzelanie.png");
  leczenieObrazek = loadImage("leczenie.png");
  tarczaObrazek = loadImage("tarcza.png");
  imageMode(CENTER);
  pociski = new ArrayList();
  pociskiW = new ArrayList();
  wybuchy = new ArrayList();
  cooldownBroni=25;
  iloscHP=3;
}
void rysuj(){   
  gracz.miganie(cooldownMigania);
  sprawdzKolizjeZGraczem();
  background(tlo);
  rysujWybuchy();
  spawnujPowerupy();
  if(iloscHP>0){
    textSize(16); 
    text(punkty+" pkt", 550 , 608);
    gracz.rysuj(mouseX,mouseY);
    hp.rysuj();
    przesunPociski();
    rysujPociski();
    aktualizujCooldowny();
    sprawdzKolizjeZWrogami();
    
  }else{    
    wynik.rysuj();
  }
   wrogowie.rysuj();
   if(pociskiW.size()>100){
        pociskiW.remove(0);
    }
}
  
}

void spawnujPowerupy(){
  cooldownPowerupow--;
  if(cooldownPowerupow<0){
    int wybierz = int(random(1,4));
    println(wybierz);
    cooldownPowerupow = int(random(500,1000));
    switch(wybierz){
      case 1: superstrzelanie.spawnuj(); break;
      case 2: leczenie.spawnuj(); break;
      case 3: superTarcza.spawnuj(); break;
    }
  }
}
void sprawdzKolizjeZWrogami(){
  for(Pocisk numerPocisku : pociski){ 
    if(!numerPocisku.trafiony){
    numerPocisku.sprawdzKolizjeZWrogami();       
    }
  }
}
void przesunPociski(){
  for(Pocisk numerPocisku : pociski){
    numerPocisku.przesun();
  }
  for(PociskW numerPocisku : pociskiW){
    numerPocisku.przesun();
  }
}
void rysujPociski(){
  for (Pocisk numerPocisku : pociski){
    if(!numerPocisku.trafiony){
    numerPocisku.rysuj();
    }
  }
  for (PociskW numerPocisku : pociskiW){
    if(!numerPocisku.trafiony){
    numerPocisku.rysuj();
    }
  }
}
void rysujWybuchy(){
  for (Wybuch numerWybuchu : wybuchy){
    numerWybuchu.rysuj();
  }
}
void aktualizujCooldowny(){
  cooldownBroni--;
  tarcza--;
  cooldownMigania--;
  superstrzelanie.aktualizuj();
  superstrzelanie.rysuj();
  leczenie.aktualizuj();
  leczenie.rysuj();
  superTarcza.rysuj();
  superTarcza.aktualizuj();
}
void uderzGracza(){
  if(tarcza<=0){
    iloscHP--;
    Wybuch numerWybuchu = new Wybuch(mouseX, mouseY);
    wybuchy.add(numerWybuchu);
    wynik.zapisz();
    tarcza=60;
    cooldownMigania=60;
  }
}
void keyPressed(){ 
  
}