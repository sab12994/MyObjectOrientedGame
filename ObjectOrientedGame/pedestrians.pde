class PedBottomToTop {
  
  float Y;
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    Y = (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (Y > 500){
    r = random(10, 390);
  }
    fill(0, 0, 255);
    rect(r, Y, 50, 50);
    
  }
}


class PedLeftToRight {
  
  float X;
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    X = (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (X > 500){
    r = random(10, 390);
  }
    fill(0, 0, 255);  
    rect(X, r, 50, 50);
    
  }
}


class PedRightToLeft {
  
  float X;
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    X = width - (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (X > 500){
    r = random(0, 300);
  }
    fill(0, 0, 255);
    rect(X, r, 50, 50);
    
  }
}


class PedTopToBottom {
  
  float Y;
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    Y = height - (map(frameCount%width, 0, 400, rmin, rmax));
    
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
    acceleration = new PVector(0.1, 0);
  }
  
  void move() {
    position.add(velocity);
    velocity.add(acceleration);
  }
  
  void display() {
    fill(0, 255, 0);
    rect(position.x, position.y, 50, 50);
  }
  
}
