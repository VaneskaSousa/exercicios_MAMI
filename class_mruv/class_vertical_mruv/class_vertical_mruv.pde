float tAtual = 0;
float vInicial = 100;
float aAtual = - 9.8;
float dAtual;
float intervalo = 1.0/60;

void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  mostraMundo();
  dAtual = MRUV(vInicial, aAtual, tAtual);
  println("Tempo: " + tAtual);
  println("Deslocamento: " + dAtual);
  println();
  ellipse(300, 600 - dAtual, 10, 10);
  tAtual = tAtual + intervalo;
}

float MRUV(float v, float a, float t){
  float d;
  d = v * t + a * t * t / 2.0;
  return(d);
}

void mostraMundo(){
  for(int i=0;i<12;i++){
    line(i*50,0,i*50,600); //linha vertical
    line(0,i*50,600,i*50); //linha horizontal
  }
}
