// Rocco Mugetti Legajo 121136/9
// Comision 3 Autoretrato

PImage img;

void setup() {
  size(800, 400);
  img = loadImage("autoretrato.jpg");
}

void draw() {

  println("X:");   //Ayuda para calcular las coordenadas X,Y
  println(mouseX);
  println("Y:");
  println(mouseY);

  background(#564E5D); //Color de fondo
  image(img, 400, 0); //Imagen a la derecha
  colorMode(HSB); // Cambio al modo de color HSB

 //Pelo  #583E14
  beginShape();
  fill(#362828);
  stroke(#362828);
  vertex(310,170);
  vertex(292,177);
  vertex(299,87);
  vertex(314,112);
  endShape();
  beginShape();
  fill(#362828);
  stroke(#362828);
  vertex(275,99);
  vertex(299,111);
  vertex(295,135);
  vertex(274,116);
  endShape();
  beginShape();
  fill(#362828);
  stroke(#362828);
  vertex(299,111);
  vertex(227,78);
  vertex(227,46);
  vertex(299,87);
  endShape();
  beginShape();
  fill(#362828);
  stroke(#362828);
  vertex(227,78);
  vertex(227,46);
  vertex(189,46);
  vertex(188,78);
  endShape();
  beginShape();
  fill(#362828);
  stroke(#362828);
  vertex(189,46);
  vertex(149,107);
  vertex(184,90);
  vertex(230,65);
  endShape();
  bezier(189,46,158,61,152,81,146,110);
  bezier(229,48,269,58,289,73,314,111);

 //Forma de la Cara Color #FFDCBC
  stroke(0); 
  line(274, 268, 290, 233);
  line(274, 268, 235, 300);
  line(235, 300, 175, 300);
  line(175, 300, 145, 195);
  line(145, 195, 151, 162);
  line(151, 162, 145, 140);
  line(145,140, 150, 106);
  line(295, 135, 290,233);
  line(275, 116, 295,135);
  line(275, 100, 275,116);
  line(228, 80, 275,100);
  line(192, 78, 228, 80);
  line(183,91,192, 78);
  line(183,91,192, 78);
  line(150, 106,183,91);
  beginShape();
  fill(#FFDCBC);
  vertex(292,177);
  vertex(290,230);
  vertex(273,269);
  vertex(236,297);
  vertex(175,297);
  vertex(146,196);
  vertex(153,163);
  vertex(146,142);
  vertex(150,108);
  vertex(187,91);
  vertex(193,81);
  vertex(226,81);
  vertex(271,100);
  vertex(273,118);
  vertex(294,136);
  vertex(292,172);
  endShape();

 //Ceja Derecha
  beginShape();
  fill(#322224);
  vertex(213,129);
  vertex(263,125);
  vertex(276,138);
  vertex(273,141);
  vertex(263,135);
  vertex(213,137);
  endShape();
 //Ceja Izquierda
  beginShape();
  fill(#322224);
  vertex(184,127);
  vertex(160,129);
  vertex(151,132);
  vertex(150,139);
  vertex(167,137);
  vertex(185,136);
  endShape();

 //Ojo Derecho #9FDEB7
  stroke(0);
  fill(255);
  bezier(226,151,246,144,246,144,264,159);
  bezier(226,151,242,163,242,163,264,159);
 
  fill(#9FDEB7);
  circle(243,153,14);
  fill(0);
  circle(243,153,7);
  
  
 //Ojo Izquierdo
  beginShape();
  fill(255);
  vertex(159,159);
  vertex(165,151);
  vertex(178,149);
  vertex(187,159);
  vertex(173,164);
  vertex(159,164);
  endShape();
  fill(#9FDEB7);
  circle(172,155,14);
  fill(0);
  circle(172,155,7);
  
 //Nariz
  bezier(205,194,213,192,213,192,213,200);
  bezier(185,201,185,197,186,192,191,197);
  noFill();
  bezier(193,142,187,168,169,183,178,198);
  bezier(178,198,183,203,183,203,191,198);
  bezier(212,200,219,200,219,200,225,192); 
  bezier(225,192,222,177,222,185,212,170);
  bezier(212,170,210,157,210,157,211,144);

 //Boca #DBA09A
 stroke(0);
  fill(#DBA09A);
  bezier(175,230,196,245,196,245,233,231);
  beginShape();
  stroke(0);
  fill(#DBA09A);
  vertex(175,230);
  vertex(184,218);
  vertex(196,218);
  vertex(209,218);
  vertex(233,231);
  endShape();
  bezier(175,230,201,225,201,225,233,231);
  
 //Oreja #EECCB1
  beginShape();
  stroke(0);
  strokeWeight(2);
  fill(#EECCB1);
  vertex(292,228);
  vertex(303,232);
  vertex(324,196);
  vertex(323,175);
  vertex(312,171);
  vertex(295,179);
  endShape();
  bezier(300,215,310,204,310,204,309,191);
  
 //Cuello
  beginShape();
  fill(#EECCB1);
  vertex(174,303);
  vertex(168,350);
  vertex(184,370);
  vertex(236,382);
  vertex(294,354);
  vertex(297,328);
  vertex(235,303);
  endShape();
 
  beginShape();
  fill(#FFDCBC);
  vertex(235,303);
  vertex(273,271);
  vertex(291,236);
  vertex(297,328);
  endShape();
  beginShape();
  fill(#F5D2BC);
  vertex(168,350);
  vertex(152,330);
  vertex(153,306);
  vertex(166,278);
 vertex(174,304);
  endShape();
 
 //Remera
  beginShape();
  fill(0);
  vertex(400,400);
  vertex(298,327);
  vertex(300,400);
  endShape();
  beginShape();
  fill(0);
  vertex(150,304);
  vertex(150,400);
  vertex(0,400);
  vertex(0,340);
  vertex(125,304);
  endShape();
  beginShape();
  fill(0);
  vertex(150,400);
  vertex(185,370);
  vertex(150,330);
  endShape();
  beginShape();
  fill(0);
  vertex(234,385);
  vertex(300,350);
  vertex(300,400);
  endShape();
  beginShape();
  fill(0);
  vertex(183,370);
  vertex(300,400);
  vertex(150,400);
  endShape();

}
