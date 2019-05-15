float colorfull;

void setup(){
  size(600,600);
  frameRate(60);
  colorMode(HSB);
  noStroke();
  background(255);
}
void draw(){
  fill(color(colorfull, 255, 255));
  colorfull++;
  if (colorfull > 255) {
    colorfull = 0;
  }
  rect (mouseX, mouseY, 20, 20); 
}
void keyPressed(){
  background(255);
}
