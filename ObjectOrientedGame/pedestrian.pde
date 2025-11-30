class Ped {
  
  float r;
  
  void display() {
    float X = width - (map(frameCount%width, 0, 400, -200, 600));
    
    if (X > 500){
    r = random(10, 300);
  }
    rect(X, r, 50, 50);
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
}
