//your variable declarations here
Star [] stars = new Star[100];
Spaceship ship;
public void setup() 
{
  size(500,500);
  //your code here
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
   ship = new Spaceship();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  //your code here
if(keyPressed){
if(key == a || key == A){
ship.turn(-10);
}
if(key == d || key == D){
ship.turn(10);
}
if(key == w || key == W){
ship.accelerate(1);
}
}
  ship.move();
  ship.show();
}
