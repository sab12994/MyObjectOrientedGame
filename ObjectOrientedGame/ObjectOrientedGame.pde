Dog dog;

PedLeftToRight[] pedestrian = new PedLeftToRight[4];
PedRightToLeft[] pedestrian1 = new PedRightToLeft[3];
PedBottomToTop[] pedestrian2 = new PedBottomToTop[2];
PedTopToBottom[] pedestrian3 = new PedTopToBottom[2];
FastPed fastPed;
boolean gameOver; 

void setup () {
  size(400, 400);
  dog = new Dog(width/2, height/2);


  fastPed = new FastPed(0, height/2);

  for (int i = 0; i < pedestrian.length; i++) {
    pedestrian[i] = new PedLeftToRight();
  }

  for (int i = 0; i < pedestrian1.length; i++) {
    pedestrian1[i] = new PedRightToLeft();
  }

  for (int i = 0; i < pedestrian2.length; i++) {
    pedestrian2[i] = new PedBottomToTop();
  }

  for (int i = 0; i < pedestrian3.length; i++) {
    pedestrian3[i] = new PedTopToBottom();
  }
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



  dog.display(); //drawaing the dog

  fastPed.move();
  fastPed.display();


  for (int i = 0; i < pedestrian.length; i++) {
    pedestrian[i].display();
    float d = dist(dog.position.x, dog.position.y, pedestrian[i].X, pedestrian[i].r);
    if (d < 40) {
      gameOver = true;
    } 
      
  }

  for (int i = 0; i < pedestrian1.length; i++) {
    pedestrian1[i].display();
     float d = dist(dog.position.x, dog.position.y, pedestrian1[i].X, pedestrian1[i].r);
    if (d < 40) {
      gameOver = true;
    } 
  }

  for (int i = 0; i < pedestrian2.length; i++) {
    pedestrian2[i].display();
     float d = dist(dog.position.x, dog.position.y, pedestrian2[i].r, pedestrian2[i].Y);
    if (d < 40) {
      gameOver = true;
    } 
  }

  for (int i = 0; i < pedestrian3.length; i++) {
    pedestrian3[i].display();
     float d = dist(dog.position.x, dog.position.y, pedestrian3[i].r, pedestrian3[i].Y);
    if (d < 40) {
      gameOver = true;
    } 
  }
  
   if (gameOver == true) {
    background(255, 0, 0);
  } 
  
}



//adding WASD controls for dog's movement
void keyPressed() {
  if (key == 'w') {
    dog.moveUp = true;
  }
  if (key == 's') {
    dog.moveDown = true;
  }
  if (key == 'a') {
    dog.moveLeft = true;
  }
  if (key == 'd') {
    dog.moveRight = true;
  }
  if (key == ' ') {
    gameOver = false;
    dog = new Dog(width/2, height/2);
  }
  
}

//making movement stop when keys are released
void keyReleased() {
  if (key == 'w') {
    dog.moveUp = false;
  }
  if (key == 's') {
    dog.moveDown = false;
  }
  if (key == 'a') {
    dog.moveLeft = false;
  }
  if (key == 'd') {
    dog.moveRight = false;
  }
}
