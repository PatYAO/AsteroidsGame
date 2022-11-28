class Spaceship extends Floater  
{   
    //your code here
    public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8,16,-8,2};
    yCorners = new int[]{-8,0,8,0};
    myColor = 255;
    myCenterX = 250.0;
    myCenterY = 250.0; //holds center coordinates   
    myXspeed = 0.0;
    myYspeed = 0.0; //holds the speed of travel in the x and y directions   
    myPointDirection = 0.0; 
    }
    
    public void hyperspace(){
    myCenterX = (Math.random() * 500);
    myCenterY = (Math.random() * 500);
    myXspeed = 0.0;
    myYspeed = 0.0;
    myPointDirection = (Math.random() * 360);
    }
}
