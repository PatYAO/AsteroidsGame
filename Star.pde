class Star //note that this class does NOT extend Floater
{
  //your code here
  int x,y,myColor;
  Star (){
  x = (int)(Math.random * 500);
  y = (int)(Math.random * 500);
  myColor = (int)(Math.random * 256),(int)(Math.random * 256),(int)(Math.random * 256);
  public void show(){
    fill(myColor);
    ellipse(x,y,5,5);
  }
}
