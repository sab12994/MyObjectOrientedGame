Dog dog;

PedLeftToRight[] pedestrian = new PedLeftToRight[4];
PedRightToLeft[] pedestrian1 = new PedRightToLeft[3];
PedBottomToTop[] pedestrian2 = new PedBottomToTop[2];
PedTopToBottom[] pedestrian3 = new PedTopToBottom[2];
FastPed fastPed;
boolean gameOver; 
PImage gameOverScreen;

void setup () {
  size(400, 400);
  dog = new Dog(width/2, height/2);


  fastPed = new FastPed(random(-50, 0), random(50, 350));

//initializing everything!
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



  dog.display(); //drawing the dog

  fastPed.move(); //initializing fast pedestrian's movement
  fastPed.display(); //drawing fast pedestrian


  for (int i = 0; i < pedestrian.length; i++) {
    pedestrian[i].display(); //drawing all pedestrians
    float d = dist(dog.position.x, dog.position.y, pedestrian[i].X, pedestrian[i].r); //adding distance variable for each pedestrian in order to detect collision between them and the dog
    if (d < 40) {
      gameOver = true; //if the distance between the dog and pedestrians is smaller than 40, the game state switches to game over 
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
  
  float d = dist(dog.position.x, dog.position.y, fastPed.position.x, fastPed.position.y);
  if (d < 40) {
      gameOver = true;
    }
  
    //game over screen
   if (gameOver == true) {
    gameOverScreen = loadImage("game over screen.jpg");
    imageMode(CENTER);
    image(gameOverScreen, width/2, height/2, 400, 400);
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
    gameOver = false;  //making all elements start from the beginning, giving the starting positions
    dog = new Dog(width/2, height/2);
    fastPed = new FastPed(random(-50, 0), random(50, 350)); //made the lost child appear at different locations each time

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
