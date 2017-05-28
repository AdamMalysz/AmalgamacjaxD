
class Wrogowie {
  int los=(int)random(1,2);  //albo mam idiotyczne szczęście albo losowanie z tylko dwoma zmiennymi nie działa
  
  Wrogowie(){
    
  }
  void rysuj(){
    wrog1.rysuj();
    wrog1.idzie();
    wrog2.rysuj();
    wrog2.idzie();
    wrog3.rysuj();
    wrog3.idzie();
    wrog4.rysuj();
    wrog4.idzie();
  }
  void formacja1(){
    Wrog3 wrog3X = new Wrog3(400,5,-80);   //będę jeszcze z tym kombinował
    wrog3Lista.add(wrog3X);
  }
}