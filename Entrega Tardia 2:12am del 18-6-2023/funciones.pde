void cuadricula() {
  for (int j = 0; j < cant; j++) { //filas
    int col = colorcolor;
    for (int i = 0; i < cant; i++) { //columnas
      if (col == 0) {    //si es par
        fill(cuadPar);
      } else {     //si es impar
        fill(cuadImpar);
      }
      if (j * cant + i == cuadroSeleccionado) {  //le asigna un indice a cada cuadrado segun su fila y su columna, y luego pinta de rojo el que coincida con la variable cuadroSeleccionado
        fill(255, 0, 0);
      }
      rect(i*tam, j*tam, tam, tam);
      col = (col + 1) % 2; //aumenta col en 1 y checkea el resto
    }
    colorcolor = (colorcolor + 1) % 2;
  }
}
