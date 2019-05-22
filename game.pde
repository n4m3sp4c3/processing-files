color red = color(255, 0, 0);
color green = color(0, 255, 0);
color blue = color(0, 0, 255);
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
float foodx;
float foody;

public class PositiveOnlyCoordinateSystem{
  float x;
  float y;
  float borderx;
  float bordery;
  
  void minMaxCheck(){
    if(x <= 0){
      x = 0;
    }
    if(y <= 0){
      y = 0;
    }
    if(x >= borderx){
      x = borderx;
    }
    if(y >= bordery){
      y = bordery;
    }
  }
}

public class Grid{
  int size;
  
  void display(){
  for (int i = 0; i < height; i = i+size) {
    line(0, i, height, i);
    line(i, 0, i, width);
  }
}
}

public class Circle{
  color c;
  float x;
  float y;
  float diameter;
  
  void display(){
    background(255);
    fill(c);
    ellipse(x,y,diameter,diameter);
  }
}

public class playerCircle extends Circle{
  int speed;
}

public class edibleCircle extends Circle{
  
}


void setup() {
  size(800, 600);
  frameRate(30);
  background(255);
  Grid bgGrid = new Grid();
  bgGrid.size = 20;
  playerCircle player1 = new playerCircle();
  player1.c = red;
  player1.x = width/2;
  player1.y = height/2;
  player1.diameter = 40;
  player1.speed = 4;
  //edibleCircle circle1,2,3,4,5,6... = new edibleCircle();
}

void draw() {
  lastmass = mass;
  Grid.display();
  makePlayerCircle();
  spawnFood();
  adjustSpeed();
  checkExitCases();
  mouseMovement();
  forceVirtualSystemToBePositive();
}

void makePlayerCircle(){
  fill(blue);
  ellipse(width/2,height/2,mass,mass);
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
  
}

void mouseMovement(){//integrate into new OOP system
    xDirection = width/2 - mouseX;
    yDirection = height/2 - mouseY;
    if(xDirection >= 100){
      virtualx = virtualx + speed;
    }else if(xDirection <= -100){
      virtualx = virtualx - speed;
    }
    if(yDirection >= 100){
      virtualy = virtualy + speed;
    }else if(yDirection <= -100){
      virtualy = virtualy - speed;
    }
    println(virtualx,"  ",virtualy,"  ",xDirection,"  ",yDirection);
}

void spawnFood(){//integrate into new OOP system
  foodx = random(virtualx - 800,virtualx + 800);
  foody = random(virtualy - 600,virtualy + 600);
  fill(random(0,255),random(0,255),random(0,255));
  ellipse(foodx,foody,20,20);
}

void checkExitCases(){//integrate into new OOP system
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

void adjustSpeed(){//integrate into new OOP system
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
/*
https://www.youtube.com/watch?v=XCu7JSkgl04                   New file for creating a class?
https://processing.org/examples/objects.html
https://processing.org/tutorials/objects/
https://forum.processing.org/one/topic/taking-user-input.html
https://processing.org/reference/line_.html
https://www.geeksforgeeks.org/new-operator-java/
*/
