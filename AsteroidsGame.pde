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
  ship.show();
}
