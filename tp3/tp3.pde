/* 
 Agustin Tabbita 119151/7
 Tp3 Comision 1
 Video explicacion:
   https://youtu.be/USndUYcgjUg
*/

//Variables
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
  CuadradosRojos();
  GrillaCuadrados();
  Rombos();
  image(obra,0,0,width/2,height);
}


void mousePressed(){
  Colores();
  Orientaciones();
}

void Colores(){
  if(mouseButton == LEFT){
    colorFondo= color(random(255),random(255),random(255));
    colorCuadrado= color(random(255),random(255),random(255));
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

void GrillaCuadrados(){
  for(int i=0;i<cant;i++) {
    for(int j=0; j<cant; j++) {
        stroke(0);
        noFill();
        strokeWeight(2);
        rect(388 + i*tam, -9 +j*tam, tam, tam);
    }
  }
}

void Rombos(){
  for(int i =0; i<cant; i++) {
    for(int j =0; j<cant; j++) {
      float x = 388 +i*tam;
      float y = -9 +j*tam;
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

void CuadradosRojos(){
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      fill(colorCuadrado);
      noStroke();
      rect(centroX+i*tam,centroY+j*tam,tam,tam);
    }
  }
}
  
  
