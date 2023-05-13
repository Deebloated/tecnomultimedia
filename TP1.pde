//German Fernando Centeno Guttmann, legajo N°94793/0
//Comisión 3
//Trabajo Práctico N°1

//variables
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
String estado = "inicio";
int cuentaFotograma = 0;
int posicion = 640; //para que el text aparezca en el borde
boolean botonReset;

void setup() {
  size(640, 480); //tamaño de canvas
  frameRate(30);
  //cargamos imagenes
  img1 = loadImage("data/img1.jpg");
  img2 = loadImage("data/img2.jpg");
  img3 = loadImage("data/img3.jpg");
  img4 = loadImage("data/img4.jpg");
  img5 = loadImage("data/img5.jpg");
  img6 = loadImage("data/img6.jpg");
}
void draw() {

  //println(mouseX, mouseY);

  //boolean para establecer la zona del boton, el cual tiene coords (240,315,160,60); solo puede ser verdadero en la ultima pantalla
  botonReset = (estado == "fin" && mouseX >=240 && mouseX <= 240+160 && mouseY >=315 && mouseY <=315+60);

  //Pantallas
  if (estado == "inicio" ) { //pantalla 1
    image(img4, 0, 0, 640, 480);
    fill(255, 255, 255);
    rect(60, 28, 520, 80, 10);
    fill(0);
    textSize(60);
    text("Teamlab Borderless", 70, 90);
    textSize(30);
    fill (255, 191, 238);
    //stroke(255, 191, 238);
    rect(15, 320, 220, 40, 10);
    rect(15, 365, 600, 40, 10);
    fill(255, 255, 255);
    text("Autor: TeamLab", 20, 350);
    text("Alumno: German Fernando Centeno Guttmann", 20, 395);
    textSize(32);
    text("Materia: Tecnología Multimedial 1 - Comision 3               Materia: Tecnología Multimedial 1 - Comision 3               Materia: Tecnología Multimedial 1 - Comision 3", posicion, 460);
    cuentaFotograma++; //aumenta el conteo de fotogramas por 1
    posicion -=5;
    if (cuentaFotograma >=250) { //para pasar pantalla
      estado = "p1";
      cuentaFotograma = 0;
      posicion = 640;
    }
  } else if (estado == "p1" ) { //pantalla 2
    image(img1, 0, 0, 640, 480);
    fill(255, 255, 255);
    textSize(32);
    text("Borderless de teamLab es un espacio artístico digital ubicado en Tokio, Japón", posicion, 450);
    cuentaFotograma++; //aumenta el conteo de fotogramas por 1
    posicion -=5;
    if (cuentaFotograma >=250) {
      estado = "p2";
      cuentaFotograma = 0;
      posicion = 640;
    }
  } else if (estado == "p2" ) { //pantalla 3
    image(img2, 0, 0, 640, 480);
    fill(255, 255, 255);
    textSize(32);
    text("Explora la relación entre el arte y la tecnología", posicion, 450);
    cuentaFotograma++; //aumenta el conteo de fotogramas por 1
    posicion -=5;
    if (cuentaFotograma >=250) {
      estado = "p3";
      cuentaFotograma = 0;
      posicion = 640;
    }
  } else if (estado == "p3" ) { //pantalla 4
    image(img5, 0, 0, 640, 480);
    fill(255, 255, 255);
    textSize(32);
    text("Utiliza proyecciones digitales y tecnología interactiva", posicion, 450);
    cuentaFotograma++; //aumenta el conteo de fotogramas por 1
    posicion -=5;
    if (cuentaFotograma >=250) {
      estado = "p4";
      cuentaFotograma = 0;
      posicion = 640;
    }
  } else if (estado == "p4" ) { //pantalla 5
    image(img6, 0, 0, 640, 480);
    fill(255, 255, 255);
    textSize(32);
    text("Las instalaciones responden a los movimientos y acciones de los visitantes", posicion, 450);
    cuentaFotograma++; //aumenta el conteo de fotogramas por 1
    posicion -=5;
    if (cuentaFotograma >=250) {
      estado = "p5";
      cuentaFotograma = 0;
      posicion = 640;
    }
  } else if (estado == "p5" ) { //pantalla final
    image(img3, 0, 0, 640, 480);
    fill(255, 255, 255);
    rect (60, 50, 640-120, 90, 10);
    fill(0);
    textSize(70);
    text("Gracias por ver!", 90, 120);
    fill (255, 191, 238);
    rect (240, 315, 160, 60, 10);
    textSize(32);
    fill (77, 176, 255);
    text("Reiniciar", 260, 355);
    estado = "fin";
  }
}

void mouseClicked() { //que pasa cuando hace click en el boton del final
  if (botonReset) {
    estado = "inicio";
    cuentaFotograma = 0;
  }
}
