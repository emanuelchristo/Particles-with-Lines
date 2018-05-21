
// The no. of particles
int noOfParticles = 100;

Particle[] p = new Particle[noOfParticles];

void setup()
{
  fullScreen();
  smooth();
  
  // Initializing particle objects
  for(int i = 0; i < p.length; i++)
  {
    p[i] = new Particle();
  }
}

void draw()
{
  background(255);
  
  // Moving the particles
  for(int i = 0; i < p.length; i++)
  {
    p[i].move();
  }
  
  // Drawing the connecting lines
  drawTriangles(p);
}