Dog dog;


void setup () {
  size(400, 400);
   dog = new Dog(width/2, height/2);
}

void draw () {
  background(110);
  
  dog.moveDog();
  dog.display();
  
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
   
}



void keyPressed() {
  if (key == 'w'){
    dog.moveUp = true;
  }
}

void keyReleased(){
  if(key == 'w') {
    dog.moveUp = false;
  }
}
