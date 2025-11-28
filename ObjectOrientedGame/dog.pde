class Dog {

boolean moveUp = false;
boolean moveRight = false;
boolean moveLeft = false;
boolean moveDown = false;
PVector position;
PVector velocity;

Dog(float x, float y) {
  position = new PVector(x, y);
  velocity = new PVector(0, 0);
  
}

void moveDog() {
  position.add(velocity);
  
  if(moveUp == true){
    velocity.y = -6.7;
  } else {
    velocity.y = 0;
  }
  
    
}

void display() {
  fill(255, 0, 0);
  ellipse(position.x, position.y, 50, 50); 
}






}
