class Wrogowie {
  int los=(int)random(1,2);  //albo mam idiotyczne szczęście albo losowanie z tylko dwoma zmiennymi nie działa
  private ArrayList<Wrog1> wrogowie1; 
  Wrogowie(){
    
  }
  void rysuj(){
    wrog1.rysuj();
    wrog1.idzie();
    wrog1.skadIdzie(los);
    wrog2.rysuj();
    wrog2.idzie();
    wrog2.skadIdzie(los);
    wrog3.rysuj();
    wrog3.idzie();
    wrog4.rysuj();
    wrog4.idzie();
  }
}