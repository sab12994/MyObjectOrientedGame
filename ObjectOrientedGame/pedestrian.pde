class PedRightToLeft {
  
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    float X = width - (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (X > 500){
    r = random(10, 300);
  }
    rect(X, r, 50, 50);
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
}
