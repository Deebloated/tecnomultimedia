//German Fernando Centeno Guttmann
//Legajo 94793/0


PImage imagen;
int colorcolor = 0;
int cant = 20;
float tam;
int cuadPar;
int cuadImpar;

void setup() {
  size(800, 400);
  imagen = loadImage("ilusionOp.jpg");
  noStroke();
}

void draw() {

  //print(mouseX,mouseY);

  background(255);
  image(imagen, 0, 0);
  translate(400, 0);
  tam = 400/cant;
  
  for (int j = 0; j < 80; j++) {
    int col = colorcolor;
    for (int i = 0; i < 80; i++) {
      if (col == 0) {
        fill(0);
      } else {
        fill(255);
      }
      noStroke();
      rect(i*tam, j*tam, tam, tam);
      col = (col + 1) % 2;
    }
    colorcolor = (colorcolor + 1) % 2;
  }
  
void mouseClicked(){
  
}


}
