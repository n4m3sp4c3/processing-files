void setup(){
  size(255,255);
  frameRate(60);
  background(0);
}
void draw(){
  for(int i=0; i < 255; i = i + 10){
  fill(i);
  ellipse(i,i,i,i);
}
}
