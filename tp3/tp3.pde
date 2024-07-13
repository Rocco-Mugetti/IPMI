//Rocco Mugetti 
//Legajo 121136/9
//Comision 3 , TP3: "Op Art"
// https://www.youtube.com/watch?v=WPu4q5SPh8c

PImage img;                             // Declaración de la variable para la imagen
int cantX = 10;                         // Cantidad de filas de la grilla
int cantY = 10;                         // Cantidad de columnas de la grilla
float animacionX = 0;                   // Variables para la animacion
float animacionY = 0;

void setup() {
  size(800, 400);
  img = loadImage("F_42.png");           // Imagen original
}

void draw() {
  image(img, 0, 0);                      // Imagen ubicada a la izquierda
  Grilla();                              // Funciones creadas
  Circulos();
}

void Grilla (){                         // En esta funcion esta creada la grilla con los cuadrados en blanco y negro
  float modX = 400/cantX;
  float modY = 400/cantY;
  for ( int y=0; y<cantY; y++) {
    for ( int x=0; x<cantX; x++) {
      if ( (x+y)%2==0 ){
        fill(0);
      } else  {
        fill(255); 
      }
      
      rect(400+x*modX, y*modY, modX, modY);
    }
  } 
}

color colorPorDistancia (float d_ ) { // Funcion que calcula un color basado en la distancia entre el centro del cuadrado y el mouse.
  float factor = map(d_,0,400,0,1);
  color col1 = color(0);
  color col2 = color(255);
  return lerpColor(col1,col2,factor);
}

void Circulos(){                       // En esta funcion estan los circulos que van dentro de los cuadrados
  float modX = 400/cantX;
  float modY = 400/cantY;
  for ( int y=0; y<cantY; y++) {
    for ( int x=0; x<cantX; x++) {
      if ( (x+y)%2==0 ){
        fill(255);
      } else  {
        fill(0); 
      }

      // Calculo el centro de los cuadrados
      float centerX = 400 + x*modX + modX/2 + animacionX;
      float centerY = y*modY + modY/2 + animacionY;
      float distancia = dist(centerX, centerY,mouseX, mouseY);
      fill(colorPorDistancia(distancia));

      // Dibujo el ellipse dentro del cuadrado
      ellipse(centerX, centerY, modX/2, modY/2);
    }
  } 
}

void mouseDragged() {
  // Al hacer click y arrastrar el mouse los circulos se mueven en la dirección del mouse
  animacionX = map(mouseX, 0, width, -10, 10);
  animacionY = map(mouseY, 0, height, -10, 10);
}
