class Dog {

boolean moveUp = false;
boolean moveRight = false;
boolean moveLeft = false;
boolean moveDown = false;
PVector position;
float speed = 4;

Dog(float x, float y) {
  position = new PVector(x, y);  //initializing pvector
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
  fill(255, 0, 0);
  ellipse(position.x, position.y, 50, 50); 
}





}
