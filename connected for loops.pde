void setup(){
  size(600,600);
  frameRate(60);
  background(0);
}
void draw(){
  for(int x=10; x < width; x = x + 10){
    for(int y=10; y < height; y = y + 10){
    fill();
    ellipse(x,y,10,10);
}
}
}
