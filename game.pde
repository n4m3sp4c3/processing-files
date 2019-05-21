int borderx = 30000;
int bordery = 30000;
int virtualx = borderx/2;
int virtualy = bordery/2;
int scrollareax = width/4;
int scrollareay = height/4;
int startx = width/2;
int starty = height/2;
int xDirection;
int yDirection;
int movexy;
int mass = 40;
int lastmass;
int speed = 4;
int counter = 0;

void setup() {
  size(800, 600);
  frameRate(30);
}

void draw() {
  lastmass = mass;
  adjustSpeed();
  checkExitCases();
  windowIsBorder();//check if still true
  //kbMovement();
  mouseMovement();
  scrollCoordinates();
  forceVirtualSystemToBePositive();
}

void forceVirtualSystemToBePositive(){
  if(virtualx <= 0){
    virtualx = 0;
  }
  if(virtualy <= 0){
    virtualy = 0;
  }
  if(virtualx >= borderx){
    virtualx = borderx;
  }
  if(virtualy >= bordery){
    virtualy = bordery;
  }
  println(virtualx,"  ",virtualy,"  ",millis());
  
}

void scrollCoordinates(){
  if(startx >= width - scrollareax){
    virtualx = virtualx + startx;
  }
  if(startx <= scrollareax){
    virtualx = virtualx - startx;
  }
  if(starty >= width - scrollareay){
    virtualy = virtualy + starty;
  }
  if(starty <= scrollareay){
    virtualy = virtualy - starty;
  }
}

void mouseMovement(){
  xDirection = startx - mouseX;
  yDirection = starty - mouseY;
  if(xDirection > 0){
    background(255);
    ellipse(startx = startx - speed * 2,starty,mass,mass);
  }
  if(xDirection < 0){
    background(255);
    ellipse(startx = startx + speed * 2,starty,mass,mass);
  }
  if(yDirection > 0){
    background(255);
    ellipse(startx,starty = starty - speed * 2,mass,mass);
  }
  if(yDirection < 0){
    background(255);
    ellipse(startx,starty = starty + speed * 2,mass,mass);
  }
  if(xDirection < 0 && yDirection < 0){
    background(255);
    ellipse(startx = startx + speed,starty = starty + speed,mass,mass);
  }
  if(xDirection > 0 && yDirection > 0){
    background(255);
    ellipse(startx = startx - speed,starty = starty - speed,mass,mass);
  }
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

void adjustSpeed() {
  if(keyCode == SHIFT){
    mass = mass - 1;
    speed = speed + 10;
  }
  if(mass < lastmass){
    speed = speed + 1;
  }
  if(mass > lastmass){
    speed = speed - 1;
  }
  
}
//https://processing.org/tutorials/objects/
//https://forum.processing.org/one/topic/taking-user-input.html
