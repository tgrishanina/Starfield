interface Particle
{
  public void show();
  public void move();
}
Particle[] particles;
void setup(){
  size(300,300);
  particles = new Particle[1000];
  for (int i = 0; i < particles.length; i++){
    particles[i] = new NormalParticle();
    particles[0] = new Oddball();
    particles[1] = new Jumbo();
  }
}

void draw(){
  background(0);
  for (int i = 0; i < particles.length; i++){
  particles[i].move();
  particles[i].show();
}}
  class NormalParticle implements Particle {
  double myX, myY, myAngle, mySpeed;
  int r,g,b;
  NormalParticle(){
    myX = 150;
    myY = 150;
    myAngle = ((Math.random()*2)*Math.PI);
    mySpeed = (Math.random()*7);
    r = (int)(Math.random()*256);
    g = (int)(Math.random()*256);
    b = (int)(Math.random()*256);}
    
    public void move(){
     myX = (Math.cos(myAngle)*mySpeed)+myX;
     myY = (Math.sin(myAngle)*mySpeed)+myY;
   }
   public void show(){
     fill(r, g, b);
     ellipse((float)myX, (float)myY, 3, 3);
   }
}
   class Oddball implements Particle {
  double myX, myY, myAngle, mySpeed;
  int r,g,b;
  Oddball(){
    myX = 200;
    myY = 100;
    myAngle = ((Math.random()*2)*Math.PI);
    mySpeed = (Math.random()*1);
    r = (int)(Math.random()*256);
    g = (int)(Math.random()*256);
    b = (int)(Math.random()*256);}
    
   public void move(){
     myX = (Math.cos(myAngle)*mySpeed)+myX;
     myY = (Math.sin(myAngle)*mySpeed)+myY;
   }
   public void show(){
     fill(r, g, b);
     ellipse((float)myX, (float)myY, 10, 20);
   }
}
class Jumbo extends NormalParticle{
  public void show(){
    fill(r, g, b);
     ellipse((float)myX, (float)myY, 25, 25);}
}
    
