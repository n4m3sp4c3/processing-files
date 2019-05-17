float startx = 400;
float starty = 300;
float mass = 40;
float speed = 1;//integrate this properly

void setup() {
  size(800, 600);
  frameRate(30);
}

void draw() {
  //----------------------RULES
  if(mass < 1){
    println("mass < 1");
    exit();
  }
  if(speed < 1){
    println("speed < 1");
    exit();
  }
  if(keyCode == SHIFT){//split
    background(255);
    startx = startx/2;
    starty = starty/2;
    mass = mass/2;
    ellipse(startx - 50,starty - 50,mass,mass);
    ellipse(startx + 50,starty + 50,mass,mass);
}
  //-------------------------
  //-----------------MOVEMENT
  if(keyCode == UP){
    background(255);
    ellipse(startx,starty = starty - speed,mass,mass);
}
  if(keyCode == DOWN){
    background(255);
    ellipse(startx,starty = starty + speed,mass,mass);
}
  if(keyCode == LEFT){
    background(255);
    ellipse(startx = startx - speed,starty,mass,mass);
}
  if(keyCode == RIGHT){
    background(255);
    ellipse(startx = startx + speed,starty,mass,mass);
}
//--------------------

}
//https://processing.org/tutorials/objects/
