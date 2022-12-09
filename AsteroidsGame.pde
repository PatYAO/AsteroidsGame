//your variable declarations here
Star [] stars = new Star[100];
Spaceship ship;
ArrayList<Bullet> bill = new ArrayList<Bullet>();
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();

public void setup() 
{
  size(500,500);
  //your code here

  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  for(int i = 0; i < 100; i++){
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
    float d = dist((float)ship.getX(),(float)ship.getY(),(float)rock.get(i).getX(),(float)rock.get(i).getY());
    if(d < 20){
      rock.remove(i);
      break;
    }
    for(int j = 0; j < bill.size(); j++){
    float d2 = dist((float)bill.get(j).getbullX(),(float)bill.get(j).getbullY(),(float)rock.get(i).getX(),(float)rock.get(i).getY());
    if(d2 < 20){
        rock.remove(i);
        bill.remove(j);
        break;   
    }
   }
  }
  for(int i = 0; i < rock.size();i++){
    rock.get(i).move();
    rock.get(i).show();
  }
  for(int i = 0; i < bill.size(); i++){
    bill.get(i).move();
    bill.get(i).show();
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
ship.accelerate(0.1);
}
if(key == 'h' || key == 'H'){
  ship.hyperspace();
}
if(key == 's' || key == 'S'){
  ship.accelerate(-0.1);
} 
if(key == 'g' || key == 'G'){
  for(int i = 0; i < rock.size(); i++){
    ship.myXspeed = 0.0;
    ship.myYspeed = 0.0;
    ship.myCenterX = rock.get(i).getX();
    ship.myCenterY = rock.get(i).getY();
  }
}
  if(key  == 'r' || key == 'R'){
    for(int i = 0; i < 10; i++){
    rock.add(new Asteroid());
    }
  }
  if(key == 'e' || key == 'E'){
  if(bill.size() < 300){
    for(int i = 0; i <= 15; i++){
    bill.add(new Bullet(ship));
    if(i <= 10){
    ship.turn((-5 + i));
    }
    else if(i > 10){
      ship.turn(i-10);
    }
    }
    ship.turn(-15);
    }
  }
  if(key == ' '){
    bill.add(new Bullet(ship));
  }
  if(key == 'p' || key == 'P'){
    for(int i = 0; i < rock.size(); i++){
      rock.remove(i);
    }
    for(int i = 0; i < bill.size(); i++){
      bill.remove(i);
    }
  }
  if(key == 'c' || key == 'C'){
    ship.myCenterX = 250;
    ship.myCenterY = 250;
    ship.myXspeed = 0;
    ship.myYspeed = 0;
  }
  if(key == 'q' || key == 'Q'){
   if(bill.size() <  100){
    for(double i = 0.0; i < 360.0; i++){
      bill.add(new Bullet(ship));
      ship.turn(i);
    }
    ship.turn(180);
   }
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
