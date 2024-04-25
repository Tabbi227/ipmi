// Agustin Tabbita 119151/7
// Tp1 Comision 1

//Variables
PImage conejito;

void setup() {
  size(1200, 450);
  conejito = loadImage("conejito.jpg");
}

void draw() {
  background(107, 142, 35);
  image(conejito, 0, 0, 600, 450);
  println(mouseX);
  println(mouseY);
  noStroke();

 // Oreja trasera
  fill(255, 255, 255);
  ellipse(970, 74, 47, 93);
  fill(224, 224, 224);
  ellipse(970, 74, 40, 87);
  
 // Oreja delantera
  fill(255, 255, 255);
  ellipse(1017, 80, 57, 105);
  quad(1045, 74, 1043, 113, 1027, 133, 1019, 72);
  fill(224, 224, 224);
  ellipse(1017, 80, 47, 97);
  fill(233, 150,122);
  ellipse(1021, 75, 33, 70);
  stroke(224);
  strokeWeight(13);
  fill(224, 224, 224);
  line(1002, 78, 1029, 109);

 //Rama
  strokeWeight(10);
  stroke(139,69,19);
  line(799, 450, 898, 163);
 
 // Cabeza
  noStroke();
  fill(255, 255, 255);
  ellipse(970, 161, 135, 120);
  ellipse(983, 154, 110, 133);
  quad(930, 113, 958, 95, 972, 101, 942, 129);
  
 // Hocico
  circle(932, 168, 75);
  fill(0);
  circle(969, 137, 20);
  ellipse(969, 140, 30, 25);
  fill(160, 160, 160);
  ellipse(915, 170, 35, 56);
  stroke(0);
  strokeWeight(6);
  line(909, 159, 900, 154);
  line(909, 159, 924, 151);
  strokeWeight(2);
  line(909, 159, 910, 179);
  line(910, 179, 903, 184);
  line(910, 179, 926, 184);
  noStroke();
 
 //Cuerpo
  fill(255);
  ellipse(976, 377, 170, 380);
  stroke(255);
  strokeWeight(12);
  line(1017, 194, 1017, 225);
  stroke(107, 142, 35);
  line(909, 244, 893, 450);
  line(898, 287, 887, 402);
  stroke(255);
  circle(1020, 434, 110);
  line(1070, 408, 1054, 339);
  
 //Brazo izquierdo
  strokeWeight(7);
  stroke(160, 160, 160);
  line(944, 363, 941, 380); 
  line(971, 374, 979, 349);
  line(979, 349, 1011, 331);
  line(944, 331, 984, 305);
  strokeWeight(9);
  stroke(184,134,11);
  line(941, 380, 971, 374);
  
 //Brazo derecho
  strokeWeight(7);
  stroke(160, 160, 160);
  line(917, 271, 911, 329);
  line(911, 329, 915, 364);
  circle(928, 352, 30);
  line(943, 353, 943, 313);
  strokeWeight(9);
  stroke(184,134,11);
  line(916, 364, 940, 364);
  stroke(255);
  strokeWeight(23);
  line(927, 349, 926, 325);
 
}
