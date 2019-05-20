float startx = 400;
float starty = 300;
float lastmass;
float mass = 40;
float speed = 10;
int counter = 0;

void setup() {
  size(800, 600);
  frameRate(30);
}

void draw() {
  lastmass = mass;
  //----------------------GAMERULES
  adjustSpeed();
  checkExitCases();
  windowIsBorder();
  checkIfInputToSplitCircle();
  movement();
}


  //-----------------MOVEMENT


void movement() {
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


void checkIfInputToSplitCircle() {//fix this
  if(keyCode == SHIFT){//split
    for (counter = 0; counter < 1; counter = counter+1) {
      background(255);
      mass = mass/2;
      ellipse(startx - 50,starty - 50,mass,mass);
      ellipse(startx + 50,starty + 50,mass,mass);
    }
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
  if(mass < lastmass){
    speed = speed + 1;
  }
  if(mass > lastmass){
    speed = speed - 1;
  }
  
}
//https://processing.org/tutorials/objects/
//https://forum.processing.org/one/topic/taking-user-input.html
