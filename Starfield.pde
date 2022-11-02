//your code here
class Particle
{
  //your code here
  double myX, myY;
  int myColor;
  double mySpeed, myAngle;
  Particle()
  {
    myColor = color(200,100,(int)(Math.random()*256));
    myX = width/2 + (int) (Math.random()*100);
    myY = height/2 +(Math.random()*100);
    mySpeed = (double)(Math.random()*10+1);
    myAngle = (double)(Math.random()*3)*Math.PI;
  }
  void show()
{
  noStroke();
  fill(myColor);
  ellipse((int)myX,(int)myY,5,5);
}
void move()
{
   myX = myX + Math.cos(myAngle*mySpeed);
   myY = myY + Math.sin(myAngle*mySpeed);
}
}
class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle() {
    myColor = color(100,200,(int)(Math.random()*256));
    myX = width/2 + (int) (Math.random()*50)+1;
    myY = height/2 +(Math.random())+1;
    mySpeed = (double)(Math.random()+1);
    myAngle = (double)(Math.random()*3)*Math.PI;
  }
  void show()
{
  noStroke();
  fill(myColor);
  ellipse((int)myX,(int)myY,15,15);
}
}
Particle[] Parts = new Particle[300];
void setup()
{
  //your code here
  size(500,500);
  for(int i = 0; i < Parts.length; i++)
  {
   Parts[i] = new Particle();
   Parts[0] = new OddballParticle();
  }
}
void draw()
{
  background(0);
  fill(255,255,255,10);
  for(int i = 0; i < Parts.length; i++)
  {
    Parts[i].show();
    Parts[i].move();
  }
  }
