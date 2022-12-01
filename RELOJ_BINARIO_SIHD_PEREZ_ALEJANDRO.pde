/*
  RELOJ BINARIO.
  ALEJANDRO PEREZ ARANDDA.
  IES LAS FUENTEZUELAS.
*/

PFont font;                                                  //VARIABLE PARA FUENTE DE LETRA.
int tm;                                                      //TAMAÑO DE LA FUENTE (VARIABLE).

void setup(){
  tm = 25;                                                                                                                               //VARIABLE DEL TAMAÑO DEL TIEMPO.
  size(900, 500);                                                                                                                        //TAMAÑO DEL LIENZO.
  font = createFont("mono", tm);                                                                                                         //SE CREA LA FUEENTE: FONT.
  textFont(font);                                                                                                                        //TEXTO FUENTE: FUENTE.
  textAlign(CENTER);                                                                                                                     //ALINEACION DEL TEXTO.

}


void draw(){
  background(0);                                                                                                                          //COLOR DE FONDO.
  rectangulos();
  
  int s = second();                                                                                                                       //COGEMOS LOS SEGUNDOS DEL EQUIPO.
  int m = minute();                                                                                                                       //COGEMOS LOS MINUTOS DEL EQUIPO.
  int h = hour();                                                                                                                         //COGEMOS LA HORA DEL EQUIPO.
  println( nf(int(binary(hour())), 6) + ":" + nf(int(binary(minute())), 6) + ":" + nf(int(binary(second())), 6));                         //DEVUELVE LA INFORMACIÓN A LA CONSOLA (HORA NORMAL)
  
  String t = nf(h, 2) + ":" + nf(m, 2) + ":" + nf(s, 2);                                                                                  //SECUENCIA EN CADENA, PARA MOSTRAR LA HORA (NORMAL).
  fill(255);
  text(t, width/2, height/2);                                                                                                             //COLOCACIÓN DEL TEXTO.
 
  String b = nf(int(binary(hour())), 6) + ":" + nf(int(binary(minute())), 6) + ":" + nf(int(binary(second())), 6);                        //SECUENCIA EN CADENA, PARA MOSTRAR LA HORA (BINARIA).
  text(b, width/2, 475);                                                                                                                  //COLOCACION DEL TEXTO.
  
}


void rectangulos(){
  stroke(255, 0, 0);
  fill(0);
  rect(100, 50, 162, 320); 
  fill(255);
 
  stroke(0, 255, 0);
  fill(0);
  rect((width/2) - 81, 50, 162, 320);
 
  
  stroke(0, 0, 255);
  fill(0);
  rect(635, 50, 162, 320);
}


 
