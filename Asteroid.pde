class Asteroids extends Floater  
{   
  private double rotSpeed;
  public Asteroids() {
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myCenterX = Math.random()*400;
    myCenterY = Math.random()*400;
    myXspeed = Math.random()-0.5;
    myYspeed = Math.random()-0.5;
    myPointDirection = Math.random()*360;
    rotSpeed = Math.random()*3-1;
   corners = 16 ;
    xCorners = new int[corners];
    yCorners = new int[corners];
    for (int i =0; i<720; i+=45)
    {
      double rads = i*(Math.PI/360);
      xCorners[i/45] = (int)(Math.cos(rads)*18)+(int)(Math.random()*7);
      yCorners[i/45] = (int)(Math.sin(rads)*18)+(int)(Math.random()*7);
    }
  }
  public void move() {
    turn(rotSpeed);
    super.move();
   }
}
