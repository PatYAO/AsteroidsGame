class Bullet extends Floater{
  public Bullet(Spaceship ship){
  myCenterX = ship.getX();
  myCenterY = ship.getY(); 
  myPointDirection = ship.getpointDir();
  myColor = #AF9B60
  accelerate(10);
}
public void show(){
  fill(myColor);   
  stroke(myColor);    
  ellipse((float)myCenterX, (float)myCenterY,10,10);
  }
public double getbullX(){
  return myCenterX;
}
public double getbullY(){
  return myCenterY;
}
}
