//German Fernando Centeno Guttmann
//Legajo 94793/0
//Presentacion: https://youtu.be/4khYdTRKDKA

//Variables Globales
PImage imagen;
int colorcolor = 0;
int cant = 20;
float tam;
int cuadPar = 0;
int cuadImpar = 255;
int cuadroSeleccionado;



void setup() {
  size(800, 400);
  imagen = loadImage("ilusionOp.jpg");  //carga imagen
  noStroke();
}



void draw() {

  background(255);
  image(imagen, 0, 0);  //invoca la imagen en la parte izquierda del canvas
  translate(400, 0);
  tam = 400/cant;
  cuadricula();
}


void mouseClicked() {

  //intercambia colores
  if (cuadPar == 0) {
    cuadPar = 255;
  } else {
    cuadPar= 0;
  }
  if (cuadImpar == 255) {
    cuadImpar = 0;
  } else {
    cuadImpar= 255;
  }

  cuadroSeleccionado = floor(random(cant * cant)); //le asigna a cuadroSeleccionado un valor aleatorio, que luego sera utilizado para checkear si coincide con el if de la funcion cuadricula(). Si coincide, el cuadrado se pone rojo.
}

void keyPressed() {
  
  //al apretar r, el programa vuelve a sus valores iniciales
  if (key=='r') {
    cuadroSeleccionado = 0;
    cuadPar=0;
    cuadImpar=255;
  }
}
