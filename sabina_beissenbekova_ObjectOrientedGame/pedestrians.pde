class PedBottomToTop {
  
  PImage pedestrian = loadImage("pedestrian.png"); //adding images of pedestrians
  float Y;
  float r;
  float rmin = random(-300, 0); 
  float rmax = random(500, 800);
  //the new min and max for the pedestrians, added in order to make pedestrians move at different speed and levels
  
  void display() {
    Y = (map(frameCount%width, 0, 400, rmin, rmax)); //making the movement
    
    if (Y > 500){
    r = random(10, 390);
  }
    imageMode(CENTER);
    image(pedestrian, r, Y, 100, 100); //image's proportions
    
  }
}


class PedLeftToRight {
  
  PImage pedestrian = loadImage("pedestrian.png"); //adding images of pedestrians
  float X;
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
    //the new min and max for the pedestrians, added in order to make pedestrians move at different speed and levels
  
  void display() {
    X = (map(frameCount%width, 0, 400, rmin, rmax));//making the movement
    
    if (X > 500){
    r = random(10, 390);
  }
    imageMode(CENTER);
    image(pedestrian, X, r, 100, 100);//image's proportions
    
  }
}


class PedRightToLeft {
  
  PImage pedestrian = loadImage("pedestrian.png"); //adding images of pedestrians
  float X;
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
    //the new min and max for the pedestrians, added in order to make pedestrians move at different speed and levels
  
  void display() {
    X = width - (map(frameCount%width, 0, 400, rmin, rmax));//making the movement
    
    if (X > 500){
    r = random(0, 300);
  }
    imageMode(CENTER);
    image(pedestrian, X, r, 100, 100);//image's proportions
    
  }
}


class PedTopToBottom {
  
  PImage pedestrian = loadImage("pedestrian.png");//adding images of pedestrians
  float Y;
  float r;
  float rmin = random(-300, 0);
  float rmax = random(500, 800);
    //the new min and max for the pedestrians, added in order to make pedestrians move at different speed and levels
  
  void display() {
    Y = height - (map(frameCount%width, 0, 400, rmin, rmax));//making the movement
    
    if (Y > 500){
    r = random(10, 390);
  }
    imageMode(CENTER);
    image(pedestrian, r, Y, 100, 100);//image's proportions
    
  }  
}


class FastPed {
  //added another type of the pedestrian, the "lost child" that is going to stop in the middle of the road and be the obstacle for the player
  
  PVector velocity;
  PVector acceleration;
  PVector position;
  PImage lostChild;

  
  FastPed(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0.1, 0);
  }
  
  void move() {
    position.add(velocity);
    velocity.add(acceleration);
    
    // when velocity gets bigger thatn 3 start slowing down
  if (velocity.x > 3) {
    acceleration.x = -0.05;
  }

  // stops at 0 velocity
  if (velocity.x < 0) {
    velocity.x = 0;
    acceleration.x = 0; // completely stopped
    }
  }
  
  void display() {
    lostChild = loadImage("lost child.png");
    image(lostChild, position.x, position.y, 120, 120);
  }
  
}
