class Asteroid extends Floater
{
 private double rotSpeed = ((Math.random() * 10)-5);
 public Asteroid(){
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myColor = #696969;
    myCenterX = 250.0;
    myCenterY = 250.0; //holds center coordinates   
    myXspeed = ((double)(Math.random() * 5));
    myYspeed = ((double)(Math.random() * 5)); //holds the speed of travel in the x and y directions   
    myPointDirection = 0.0; 
 }
 public void move(){
   turn(rotSpeed);
   super.move();
 }

}
