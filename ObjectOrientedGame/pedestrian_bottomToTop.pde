class PedBottomToTop {
  
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    float Y = (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (Y > 500){
    r = random(10, 390);
  }
    fill(0, 0, 255);
    rect(r, Y, 50, 50);
    
  }
}


class PedLeftToRight {
  
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    float X = (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (X > 500){
    r = random(10, 390);
  }
    fill(0, 0, 255);  
    rect(X, r, 50, 50);
    
  }
}


class PedRightToLeft {
  
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    float X = width - (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (X > 500){
    r = random(0, 300);
  }
    fill(0, 0, 255);
    rect(X, r, 50, 50);
    
  }
}


class PedTopToBottom {
  
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    float Y = height - (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (Y > 500){
    r = random(10, 390);
  }
    fill(0, 0, 255);
    rect(r, Y, 50, 50);
    
  }  
}


class FastPed {
  
  PVector velocity;
  PVector acceleration;
  PVector position;
  
  FastPed(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(1, 0);
  }
  
  void move() {
    position.add(velocity);
    velocity.add(acceleration);
  }
  
  void display() {
    fill(0, 255, 0);
    rect(position.x - 100, position.y, 50, 50);
  }
  
}
