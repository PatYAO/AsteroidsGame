//your variable declarations here
Star [] stars = new Star[100];
Spaceship ship;
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();
public void setup() 
{
  size(500,500);
  //your code here
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    rock.add(new Asteroid());
  }
   ship = new Spaceship();
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  
  for(int i = 0; i < rock.size();i++){
    rock.get(i).move();
    rock.get(i).show();
  }
  
  //your code here
if(keyPressed){
if(key == 'a' || key == 'A'){
ship.turn(-10);
}
if(key == 'd' || key == 'D'){
ship.turn(10);
}
if(key == 'w' || key == 'W'){
ship.accelerate(1);
}
if(key == 'h' || key == 'H'){
  ship.hyperspace();
}
if(key == 's' || key == 'S'){
  ship.accelerate(-1);
} 
if(key == CODED){
    if (keyCode == LEFT){
     ship.turn(-10); 
    }
    if(keyCode == RIGHT){
     ship.turn(10);
    }
    if(keyCode == UP){
      ship.accelerate(1);
    }
    if(keyCode == DOWN){
      ship.accelerate(-1);
    }
}
}
  ship.move();
  ship.show();
}
