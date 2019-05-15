PFont f;
String message = "TEXT";
float theta;
float full;

void setup() {
  size(800, 800);
  f = createFont("Arial",20,true);
  colorMode(HSB);
  noStroke();
}

void draw() { 
  background(255);
  fill(color(full, 255, 255));
  full++;
  if (full > 255) {
    full = 0;
  }
  textFont(f);                  
  translate(width/2,height/2);  
  rotate(theta);               
  textAlign(CENTER);            
  text(message,0,0);   
  theta += 0.05;                
}//https://www.reddit.com/r/processing/comments/9gr5pb/question_how_to_create_rainbow_color_cycle_in/
