class Star //note that this class does NOT extend Floater
{
  private double myX, myY,mySize;
  private int myColor;
  public Star() {
    myX=(Math.random()*400-200);
    myY=(Math.random()*400-200);
    mySize=(int)(Math.random()*4+2);
  } 

  public void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY,(float)mySize,(float)mySize);
  }
}
