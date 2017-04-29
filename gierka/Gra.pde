class Gra{
PImage tlo;
Gra(){
  String[] lista = (loadStrings("wyniki.txt"));
  for(int i=0;i<=4;i++){
    wszystkieWyniki[i] = int(lista[i]);
  }
  
  statekGracza = loadImage("gracz.png");
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
  imageMode(CENTER);
  pociski = new ArrayList();
  wybuchy = new ArrayList();
  cooldownBroni=25;
  iloscHP=3;
}
void rysuj(){
  gracz.miganie(cooldownMigania);
  sprawdzKolizjeZGraczem();
  background(tlo);
  rysujWybuchy();
  if(iloscHP>0){
    gracz.rysuj(mouseX,mouseY);
    hp.rysuj();
    przesunPociski();
    rysujPociski();
    aktualizujCooldowny();
    sprawdzKolizjeZWrogami();
    if(mousePressed && cooldownBroni<0){
      Pocisk numerPocisku = new Pocisk(mouseX, mouseY);
      pociski.add(numerPocisku);
      cooldownBroni=50;
      if(pociski.size()>25){
        pociski.remove(0);
      }
    }           
  }else{    
    wynik.rysuj();
  }
   wrogowie.rysuj();
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
}
void rysujPociski(){
  for (Pocisk numerPocisku : pociski){
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
  punkty++;
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
  //do testowania przegranej
  if(tarcza<=0){
    uderzGracza();
  }
  //
}