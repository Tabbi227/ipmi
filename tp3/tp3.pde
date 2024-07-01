/* 

 *Agustin Tabbita 119151/7
 *Tp3-Recuperatorio 
 *Comision 1

*/


PImage obra;
int tam,cant=28;
int centroX=528, centroY=131;
color colorFondo, colorCuadrado;
boolean cambiarOrientacion = false;


void setup() {
  size (800,400);  
  obra =loadImage("Obra.jpeg");
  colorFondo = color(94,149,144);
  colorCuadrado = color(203, 53, 26);
  tam= width/cant;
}

void draw() {
  background(colorFondo);
  CuadradosRojos(5,5);
  GrillaCuadrados(388, -9);
  Rombos(388, -9);
  image(obra,0,0,width/2,height);
}

void mousePressed(){
  Colores(color (random (255), random (255), random (255)), color (random (255), random (255), random (255)));
  Orientaciones();
}


void Colores(color colorRandom, color colorRandom2){
  if(mouseButton == LEFT){
    colorFondo= colorRandom;
    colorCuadrado= colorRandom2;
  }else if (mouseButton == RIGHT){
    colorFondo = color(94,149,144);
    colorCuadrado = color(203, 53, 26);
  }
}

void Orientaciones(){
  if(mouseButton == LEFT){
    cambiarOrientacion=!cambiarOrientacion;
  }else if (mouseButton == RIGHT){
    cambiarOrientacion=false;
  }
}


void GrillaCuadrados(int posx, int posy){
  for(int i=0;i<cant;i++) {
    for(int j=0; j<cant; j++) {
        stroke(0);
        noFill();
        strokeWeight(2);
        rect(posx + i*tam, posy +j*tam, tam, tam);
    }
  }
}

void Rombos(int posx, int posy){
  for(int i =0; i<cant; i++) {
    for(int j =0; j<cant; j++) {
      float x = posx +i*tam;
      float y = posy +j*tam;
      float rombo = tam/4;
      fill(0);
      stroke(1);
      quad(x, y-rombo, x+rombo, y,x, y+rombo, x-rombo, y);
      if (x>=centroX && x<=centroX+5*tam && y>=centroY && y<=centroY+5*tam){
        stroke(255);
        strokeWeight(5);
        if(cambiarOrientacion){
          line(x-rombo/2, y+rombo/2,x+rombo/2, y-rombo/2);
        }else{
          line(x-rombo/2, y-rombo/2,x+rombo/2, y+rombo/2);
        }
      }else{
        stroke(255);
        strokeWeight(5);
        if(cambiarOrientacion){
          line(x-rombo/2, y-rombo/2,x+rombo/2, y+rombo/2);
        }else{
          line(x-rombo/2, y+rombo/2,x+rombo/2, y-rombo/2);
        }
      }
    }
  }
}

void CuadradosRojos(int filas, int columnas){
  for(int i=0; i<filas; i++){
    for(int j=0; j<columnas; j++){
      fill(colorCuadrado);
      noStroke();
      rect(centroX+i*tam,centroY+j*tam,tam,tam);
    }
  }
}
  
  
