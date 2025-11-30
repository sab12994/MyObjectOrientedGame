class PedBottomToTop {
  
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
  
  void display() {
    float Y = (map(frameCount%width, 0, 400, rmin, rmax));
    
    if (Y > 500){
    r = random(10, 390);
  }
    rect(r, Y, 50, 50);
    
  }
  
}
