class Dog {


PImage dog;
boolean moveUp = false;
boolean moveRight = false;
boolean moveLeft = false;
boolean moveDown = false;
PVector position;
float speed = 5;

Dog(float x, float y) {
  position = new PVector(x, y);  //initializing pvector
  imageMode(CENTER);
  dog = loadImage("Asset 1.png"); //the dog image

}

//writing dog's movement 
void moveDog() {
  if(moveUp == true){
    position.y = position.y - speed;
  }
  if(moveDown == true){
    position.y = position.y + speed;
  }
  if(moveLeft == true){
    position.x = position.x - speed;
  }
  if(moveRight == true){
    position.x = position.x + speed;
  }
// reference: Bugs-Be-Gone-Code > keyboard_controls      
}

void display() {
  image(dog, position.x, position.y, 60, 70); //image's proportions
  }

}
