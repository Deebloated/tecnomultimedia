PImage img;

void setup() {
  size(800, 400);
  img = loadImage("German.jpg"); // aquí debes poner la ruta y nombre de tu imagen
}

void draw() {
  println(mouseX, mouseY); //Checkeamos posicion del mouse para colocar los objetos
  background(255); // Fondo blanco
  image(img, 400, 0, 400, 400); //Colocamos imagen del lado derecho
  noStroke(); //Sacamos los borders de los objetos
  fill(255, 200, 150); // Color de cabeza
  ellipse(200, 200, 200, 200); // Cabeza
  ellipse(80, 190, 50, 70); // Oreja izquierda
  ellipse(320, 190, 50, 70); // Oreja derecha
  fill(0); // Color de oidos y ojos
  ellipse(80, 190, 20, 40); // Oido izquierda
  ellipse(320, 190, 20, 40); // Oido derecha
  ellipse(150, 175, 50, 50); // Ojo izquierdo
  ellipse(250, 175, 50, 50); // Ojo derecho
  fill(255); // Color de pupila
  ellipse(160, 165, 20, 20); // Pupila izquierda
  ellipse(260, 165, 20, 20); // Pupila derecha
  fill(255, 0, 0); // Color de labios
  rect(150, 245, 100, 10); // Labios
  fill(0); // Color de pelo
  rect(120, 90, 160, 50); // Pelo
}
