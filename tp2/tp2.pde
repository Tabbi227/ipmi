// Agustin Tabbita 119151/7
// Tp2 Comision 1

//VARIABLES
PImage stlogoback, stlogoback2, stuno, stdos, sttres, stlogo; 
int seg=0, fps=600, ultseg=0, xb, yb, anchob=180, altob=80, offsetY= 140;
int logoalpha = 0, textalpha= 255,fadetiempo= 160;
boolean boton= false, botonvis = false;
float xpng, ypng, text1, text2, text3;
int text1size= 27, text2size= 27, text3size= 10;
String textoelenco1= "Ahmed Best como Jar jar Binks \n Jake Lloyd como Anakin Skywalker \n Pernilla August como Shmi Skywalker \n Natalie Portman como Reina Amidala";
String textoelenco2= "Liam Neeson como Qui-Gon Jinn \n Kenny Baker como R2-D2 \n Ewan McGregor como Obi-Wan Kenobi ";
String textoelenco3= "Ray Park como Darth Maul";
PFont credits;
color creditco=color(245,245,11), logotip=color(51, 255, 255);

void setup() {
  size(640, 480);
//ASIGNACIONES
  credits= loadFont("ArialNarrow-Bold-32.vlw");
  stlogoback = loadImage("stlogoback.jpg");
  stlogoback2 = loadImage("stlogoback2.jpg");
  stuno = loadImage("stuno.jpg");
  stdos = loadImage("stdos.jpg");
  sttres = loadImage("sttres.jpg");
  stlogo = loadImage("stlogo.png");
  ultseg = frameCount;
  xb = (width - anchob)/2;
  yb = (height - altob)/2 + offsetY;
  xpng = (width - stlogo.width) /2; 
  ypng = (height - stlogo.height) /2;
  text1= -width;
  text2= -height/2;
  text3= width/2;
}

void draw() {
  background(0); 
  //TEXTO Y LOGO INICIAL (PRIMERA PANTALLA)
  if(seg==0) {
    image(stlogoback,0,0,width, height); 
    if(textalpha > 0) {
        textalpha -= 255 / fadetiempo;
      }
      textFont(credits);
      fill(logotip, textalpha);
      textAlign(CENTER,CENTER);
      textSize(40);
      text("En una galaxia muy muy lejana...", width/2, height/2);
    if( textalpha <=0) {
      if (logoalpha < 255){
        logoalpha+=255 / fadetiempo;
      }
      tint(255,logoalpha);
      image(stlogo, xpng, ypng );
      noTint();
    }
  //SEGUNDA PANTALLA
  
  } else if(seg==1) {
    image(stuno,0,0,width, height);
    if(text1< width /2){
      text1+=3;
    }
    textFont(credits);
    fill(creditco);
    textAlign(CENTER,CENTER);
    textSize(text1size);
    text(textoelenco1, text1, height /2);
    
  //TERCERA PANTALLA
  } else if(seg==2) {
    image(stdos,0,0,width, height);
    if (text2 < height /2) {
      text2 += 3;
    }
    textFont(credits);
    fill(creditco);
    textAlign(CENTER,CENTER);
    textSize(text2size);
    text(textoelenco2, width/2, text2);
  
  //CUARTA PANTALLA
  } else if(seg==3) {
    image(sttres,0,0,width, height);
    if(text3size < 37) {
      text3size += 1;
    }
    textFont(credits);
    fill(creditco);
    textAlign(CENTER,CENTER);
    textSize(text3size);
    text(textoelenco3, text3, height /2);
    
  //QUINTA PANTALLA 
  } else if(seg==4) {
    image(stlogoback2,0,0,width, height);
    textFont(credits);
    fill(logotip);
    textAlign(CENTER);
    textSize(34);
    text("¡Gracias por ver!", width /2, height - 400);
    
//BOTON 
    textFont(credits); 
    fill(0);
    stroke(logotip);
    rect(xb, yb, anchob, altob);
    fill (logotip);
    textAlign(CENTER,CENTER);
    textSize(30);
    text( "Reiniciar", xb + anchob /2, yb +altob /2);
    image(stlogo, xpng, ypng);
    botonvis = true;
    }else{
     botonvis = false; 
  }
  if(!boton && frameCount - ultseg > fps) {
    seg++;
    ultseg = frameCount;
    
    if (seg == 5) {
      boton =true;
      seg--;
    }
  }  
}
void mousePressed() {
  if(botonvis && mouseX>= xb && mouseX< xb+anchob && mouseY>yb && mouseY< yb+altob) {
    boton= false;
    seg=0;
    ultseg = frameCount;
    logoalpha = 0;
    textalpha = 255;
    botonvis = false;
    text1= -width;
    text2= -height/2;
    text3size= 27;
  }
}
