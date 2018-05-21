
// Array to store the distance between particles
float[] distances = new float[noOfParticles];

void drawTriangles(Particle[] p)
{
  for(int i = 0; i < p.length; i++)
  {
    for(int j = 0; j < distances.length; j++)
    {
      // Calculating distance b/w the current particle and all other particles
      distances[j] = dist(p[i].x, p[i].y, p[j].x, p[j].y);
    }
    // Drawing lines for current particle
    drawLine(p, i);
  
  }
}

void drawLine(
Particle[] p, int j)
{
  float dist = distances[0];
  int temp1 = 0;
  int temp2 = 0;
  
  // Calculating first closest particle
  for(int i = 0; i < distances.length; i++)
  {
    if(dist > distances[i] && distances[i] != 0)
    {
      dist = distances[i];
      temp1 = i;
    }
  }
  
  
  dist = distances[0];
  
  
  // Calculating second closest particle
  for(int i = 0; i < distances.length; i++)
  {
    if(dist > distances[i] && distances[i] != 0 && i != temp1)
    {
      dist = distances[i];
      temp2 = i;
    }
  }
  
  // Drawing the lines to two particles closest to current particle
  stroke(0);
  strokeWeight(0.3);
  line(p[j].x, p[j].y, p[temp1].x, p[temp1].y);
  line(p[j].x, p[j].y, p[temp2].x, p[temp2].y);
}