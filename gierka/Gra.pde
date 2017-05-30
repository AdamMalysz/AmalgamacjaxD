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
  tloGra.rysuj();
  gracz.miganie(tarcza);
  sprawdzKolizjeZGraczem();
  rysujWybuchy();
  spawnujPowerupy();
  if(iloscHP>0){ //zatrzymuje grę po przegranej
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
  //Usuwa pociski i wybuchy jeśli zrobi się ich za dużo
   wrogowie.rysuj();
   if(pociskiW.size()>100){
      pociskiW.remove(0);
    }
   if(wybuchy.size()>50){
       wybuchy.remove(0);
   }
}
  
}

void spawnujPowerupy(){ //zmniejsza cooldown o 1 co klatkę, a kiedy spadnie do zera losuje nowy od 500 do 100 i spawnuje losowy powerup 
  cooldownPowerupow--;
  if(cooldownPowerupow<0){
    int wybierz = int(random(1,4));
    cooldownPowerupow = int(random(500,1000));
    switch(wybierz){
      case 1: superstrzelanie.spawnuj(); break;
      case 2: leczenie.spawnuj(); break;
      case 3: superTarcza.spawnuj(); break;
    }
  }
  superstrzelanie.aktualizuj();
  superstrzelanie.rysuj();
  leczenie.aktualizuj();
  leczenie.rysuj();
  superTarcza.rysuj();
  superTarcza.aktualizuj();
}
void sprawdzKolizjeZWrogami(){ //Sprawdza kolizje dla każdego pociski z tablicy pociski (pociski gracza)
  for(Pocisk numerPocisku : pociski){ 
    if(!numerPocisku.trafiony){
    numerPocisku.sprawdzKolizjeZWrogami();       
    }
  }
}
void przesunPociski(){ //Co klatke przesuwa wszystkie pociski w dół
  for(Pocisk numerPocisku : pociski){
    numerPocisku.przesun();
  }
  for(PociskW numerPocisku : pociskiW){
    numerPocisku.przesun();
  }
}
void rysujPociski(){ //Rysuje obrazki pocisków 
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
void rysujWybuchy(){ //Rysuje obrazki wybuchów
  for (Wybuch numerWybuchu : wybuchy){
    numerWybuchu.rysuj();
  }
}
void aktualizujCooldowny(){ //odlicza cooldowny
  cooldownBroni--;
  tarcza--;
  tarcza--;
}
void uderzGracza(){ //odejmuje HP i dodaje wybuch, jeśli gracz nie ma tarczy
  if(tarcza<=0){
    iloscHP--;
    Wybuch numerWybuchu = new Wybuch(mouseX, mouseY);
    wybuchy.add(numerWybuchu);
    wynik.zapisz();
    tarcza=120;
  }
}