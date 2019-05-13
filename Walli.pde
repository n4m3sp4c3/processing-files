void setup(){
  size(600,600);
  frameRate(1);
  background(255);
}

void draw(){
  ellipse(300,200,100,100);
  ellipse(280,190,18,36);
  ellipse(320,190,18,36);
  ellipse(300,230,50,20);
  quad(280,250,280,330,320,330,320,250);
  line(280,330,250,400);
  line(320,330,350,400);
}
