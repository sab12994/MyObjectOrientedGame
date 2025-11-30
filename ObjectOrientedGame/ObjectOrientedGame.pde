Dog dog;
Ped pedestrian;


void setup () {
  size(400, 400);
   dog = new Dog(width/2, height/2);
   pedestrian = new Ped();
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
  
  dog.moveDog(); //initializing dog's movement
  dog.display(); //drawing the dog
  pedestrian.display();
  
   
}



//adding WASD controls for dog's movement 
void keyPressed() {
  if (key == 'w'){
    dog.moveUp = true;
  }
  if (key == 's'){
    dog.moveDown = true;
  }
  if (key == 'a'){
    dog.moveLeft = true;
  }
  if (key == 'd'){
    dog.moveRight = true;
  }
}

//making movement stop when keys are released
void keyReleased(){
  if(key == 'w') {
    dog.moveUp = false;
  }
  if (key == 's'){
    dog.moveDown = false;
  }
  if (key == 'a'){
    dog.moveLeft = false;
  }
  if (key == 'd'){
    dog.moveRight = false;
  }
}
