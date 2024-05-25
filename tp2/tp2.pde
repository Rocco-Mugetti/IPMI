//Rocco Mugetti 
//Legajo 121136/9
//Comision 3 TP:2 Obra de arte electrónico

PImage img1, img2, img3;
float posX, posY;
int estado;
int contador;
String texto1, texto2, texto3;
int transicionDuracion = 180; // Duración de la transición (3 segundos)
int apariciondetexto = 255; // Opacidad del texto

void setup() {
  size(640, 480);
  img1 = loadImage("Portada.jpg");
  img2 = loadImage("imagen 1 diego.jpg");
  img3 = loadImage("Imagen final diego.jpg");

  texto1 = "Te presento Diego VIVE";
  texto2 = "Una experiencia inmersiva\nque explora la vida y legado de Diego Maradona";
  texto3 = "¡No te lo pierdas!";
  textAlign(LEFT); // Alineación del texto a la izquierda
  textFont(createFont("Haettenschweiler", 48));
  fill(#F5EC34);
  estado = 1;
  contador = 0;
  posX = 10;
  posY = 320;
}

void draw() {
  background(0, 255, 0);
  if (estado == 1) {
    image(img1, 0, 0, width, height);
    fill(#F5EC34, apariciondetexto); // Color del texto
    textSize(48);
    text(texto1, posX, posY, 600, 200);
    apariciondetexto -= 1; // Animación de desvanecimiento (aproximadamente 3 segundos)

    if (apariciondetexto <= 0) {
      estado++;
      apariciondetexto = 255; // Reinicia opacidad para el siguiente estado
    }
  } else if (estado == 2) {
    image(img2, 0, 0, width, height);
    fill(#F5EC34, apariciondetexto);
    text(texto2, posX, posY, 600, 200);
    apariciondetexto -= 1; 

    if (apariciondetexto <= 0) {
      estado++;
      apariciondetexto = 255; 
    }
  } else if (estado == 3) {
    image(img2, 0, 0, width, height);
    textSize(48);
    text(texto1, posX, posY, 600, 200); // Cambio de texto

    contador++;
    if (contador >= transicionDuracion) {
      estado++;
      contador = 0;
    }
  } else if (estado == 4) {
    image(img2, 0, 0, width, height);
    textSize(48);
    text(texto2, posX, posY, 600, 200);

    posX += 5;
    if (posX >= width) {
      estado = 5;
      contador = 0;
      posX = 20;
      posY = 320;
    }
  } else if (estado == 5) {
    image(img3, 0, 0, width, height);
    textSize(48);
    text(texto3, posX, posY, 600, 200);
text("REINICIAR", 455,420);
    if (mouseX > 450 && mouseX < 450 + 150 && mouseY > 300 && mouseY < 300 + 80) {
      fill(0, 255, 0);
    } else {
      fill(200);
    }
    rect(450, 300, 150, 80);
  }
}

void mousePressed() {
  if (estado == 5) {
    if (mouseX > 450 && mouseX < 450 + 150 && mouseY > 300 && mouseY < 300 + 80) { // Boton de reiniciar
      estado = 1;
      apariciondetexto = 255;
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
}
