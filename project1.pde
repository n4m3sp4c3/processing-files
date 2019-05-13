public short r = 255;
public short g = 0;
public short b = 0;

void setup(){
  size(600,600);
  frameRate(60);
  background(255);
}
void draw(){
  line(X,Y,500,500);
}
  void mousePressed(){
  fill(r,g,b);
  rect (mouseX, mouseY, 20, 20);
  ellipse(mouseX,mouseY,100,50); 
 
  
}
void keyPressed(){
  background(r,g,b);
  println(r,g,b);
}
