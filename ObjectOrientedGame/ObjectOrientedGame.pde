
void setup () {
  size(400, 400);
  
  
}

void draw () {
  background(110);
  
   //pedestrian crossing
  int x = 60;
  int y = 0;
  int endRoad = 400;
  int spacing = 60;
  while (y < endRoad) {
    noStroke();
    fill(255); 
    rect (x, y, 280, 30);
    y = y + spacing;
  }  
  
  dog(); //the dog
 
}

void dog() {
  fill(255, 0, 0);
  ellipse(width/2, height/2, 50, 50); 
  
    
}
