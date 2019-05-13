color randcolor = color(random(0,255),random(0,255),random(0,255));

void setup(){
  size(600,600);
  frameRate(60);
  background(255);
}
void draw(){
  randcolor = color(random(0,255),random(0,255),random(0,255));
  fill(randcolor);
  rect (mouseX, mouseY, 20, 20); 
}
void keyPressed(){
  background(255);
}
