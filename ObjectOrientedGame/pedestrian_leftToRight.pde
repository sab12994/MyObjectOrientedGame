class PedLeftToRight {
  
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    float X = (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (X > 500){
    r = random(10, 390);
  }
    rect(X, r, 50, 50);
    
  }
  
}
