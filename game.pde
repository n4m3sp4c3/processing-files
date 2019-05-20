int startx = 400;
int starty = 300;
int xDirection;
int yDirection;
int movexy;
int mass = 40;
int speed = 6;
int counter = 0;

void setup() {
  size(800, 600);
  frameRate(30);
}

void draw() {
  adjustSpeed();
  checkExitCases();
  windowIsBorder();
  //checkIfInputToSplitCircle();
  //kbMovement();
  mouseMovement();
}

void mouseMovement(){
  xDirection = startx - mouseX;
  yDirection = starty - mouseY;
  movexy = xDirection + startx + yDirection + starty;//work on here next
  startx = movexy/2;
  starty = movexy/2;
  background(255);
  ellipse(startx,starty,mass,mass);
  /*if(xDirection > 0){
    background(255);
    ellipse(startx = startx - speed,starty,mass,mass);
  }
  if(xDirection < 0){
    background(255);
    ellipse(startx = startx + speed,starty,mass,mass);
  }
  if(yDirection > 0){
    background(255);
    ellipse(startx,starty = starty - speed,mass,mass);
  }
  if(yDirection < 0){
    background(255);
    ellipse(startx,starty = starty + speed,mass,mass);
  }
  if(xDirection < 0 && yDirection < 0){
    background(255);
    ellipse(startx = startx + speed,starty = starty + speed,mass,mass);
  }
  if(xDirection > 0 && yDirection > 0){
    background(255);
    ellipse(startx = startx - speed,starty = starty - speed,mass,mass);
  }*/
}

void kbMovement() {//integrate switch statement and ask if the user wants to move with mouse or keyboard
  
  if(keyCode == 'W'){
    background(255);
    ellipse(startx,starty = starty - speed,mass,mass);
}
  if(keyCode == 'S'){
    background(255);
    ellipse(startx,starty = starty + speed,mass,mass);
}
  if(keyCode == 'A'){
    background(255);
    ellipse(startx = startx - speed,starty,mass,mass);
}
  if(keyCode == 'D'){
    background(255);
    ellipse(startx = startx + speed,starty,mass,mass);
}
  if(keyCode == 'W' && keyCode == 'D'){
    background(255);
    ellipse(startx = startx + speed,starty = starty + speed,mass,mass);
  }


}


/*void checkIfInputToSplitCircle() {//fix this
  if(keyCode == SHIFT){//split
    for (counter = 0; counter < 1; counter = counter+1) {
      background(255);
      mass = mass/2;
      ellipse(startx - 50,starty - 50,mass,mass);
      ellipse(startx + 50,starty + 50,mass,mass);
    }
}
}*/
  
void windowIsBorder() {
  if(startx > width){
    startx = width;
  }else if(startx < 0){
    startx = 0;
  }
  if(starty > height){
    starty = height;
  }else if(starty < 0){
    starty = 0;
  }
}

void checkExitCases() {
  if(keyCode == ESC){
    println("ESCAPE");
    exit();
  }
  if(mass < 1){
    println("mass < 1");
    exit();
  }
  if(speed < 1){
    println("speed < 1");
    exit();
  }
}

/*void adjustSpeed() {
  if(keyCode == SHIFT){
    mass = mass - 1;
    speed = speed + 10;
  }
  if(mass < lastmass){
    speed = speed + 1;
  }
  if(mass > lastmass){
    speed = speed - 1;
  }*/
  
}
//https://processing.org/tutorials/objects/
//https://forum.processing.org/one/topic/taking-user-input.html
