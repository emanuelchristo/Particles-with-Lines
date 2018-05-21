
class Particle
{
  float x;
  float y;
  float xVel;
  float yVel;
  float initXVel;
  float initYVel;
  float diameter;
  float velMultiplier;
  
  Particle()
  {
    setVars();
  }
  
  // Moving the particle
  void move()
  {
    x += xVel;
    y += yVel;
    setVel();
    hitTheWalls();
    drawParticle();
  }
  
  // Increasing the velocity according to mouse X position
  void setVel()
  {
    velMultiplier = map(mouseX, 0, width, 1, 5);
    xVel = signVel(xVel) * initXVel * velMultiplier;
    yVel = signVel(yVel) * initYVel * velMultiplier;
  }
  
  // Getting the sign of given velocity
  int signVel(float v)
  {
    if(v < 0)
      return -1;
    else 
      return 1;
  }
  
  // Checking whether the particle have hit any end of the window 
  //and reversing the velocity if yes.
  void hitTheWalls()
  {
    if(x >= width || x <= 0)
      xVel = -xVel;
    if(y >= height || y <= 0)
      yVel = -yVel;
  }
  
  // Drawing the particel
  void drawParticle()
  {
    noStroke();
    fill(0);
    ellipseMode(CENTER);
    ellipse(x, y, diameter, diameter);
  }
  
  // Initialising the variables
  void setVars()
  {
    x = random(1, width);
    y = random(1, height);
    xVel = random(1, 2);
    yVel = random(1, 2.5);
    initXVel = xVel;
    initYVel = yVel;
    diameter = random(2,5);
  } 
}