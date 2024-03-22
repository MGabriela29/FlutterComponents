class Data{
  String? nombre;
  bool? gusto;
  int? califGusto;
  String? opc1;
  bool? web;
  bool? emulador;
  bool? phone;

//los nombres tiene que se diferentes 
  Data({required String nomb, 
        required bool gust,
        required int calif,
        required String op,
        required bool nav,
        required bool emu,
        required bool cel  }){
    nombre = nomb;
    gusto =gust;
    califGusto=calif;
    opc1=op;
    web=nav;
    emulador= emu;
    phone=cel;
  }
}