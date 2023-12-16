class Bullet extends Floater{
  public Bullet(Spaceship jet){
    myCenterX = jet.getX();
    myCenterY = jet.getY();
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = jet.getPointDirection();
    myColor = 0;
  }
  public void show(){
    fill(myColor,255);   
    stroke(255,255);
    strokeWeight(2);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  
  public void move() {          
    myCenterX += myXspeed*2;    
    myCenterY += myYspeed*2; 
  }
  public double getCenterX(int m){
    double rads = m*(Math.PI/180);
    return myCenterX + Math.cos(rads)*5;
  }
  public double getCenterY(int m){
    double rads = m*(Math.PI/180);
    return myCenterY + Math.sin(rads)*5;
  }}

