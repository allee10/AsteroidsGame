Star[] bubbles = new Star[100];
Spaceship spacey = new Spaceship();
public void setup() 
{
  background(0);
  size(400, 400);
  noStroke();
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  noStroke();
  spacey.move();
  spacey.show();
  translate(200, 200);
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i].show();
  }
}
public void keyPressed() {
  if (key == 'd') {
    spacey.turn(10);
  } else if (key == 'a') {
    spacey.turn(-10);
  } else if (key == 'w') {
    spacey.accelerate(1);
  } else if (key == 's') {
    spacey.accelerate(-1);
  } else if (key =='j') {
    spacey.plusX(-5);
  } else if (key =='l') {
    spacey.plusX(5);
  } else if (key =='i') {
    spacey.plusY(-5);
  } else if (key =='k') {
    spacey.plusY(5);
  } else if (key == 'h') {
    spacey.hyperspace();
  }
}
