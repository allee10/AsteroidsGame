Star[] bubbles = new Star[100];
Spaceship spacey = new Spaceship();
ArrayList <Asteroids> rock = new ArrayList <Asteroids>();
public void setup() 
{
  background(0);
  size(400, 400);
  noStroke();
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i] = new Star();
  }
  for (int i =0; i<7;i++){
    rock.add(new Asteroids());
  }
}
public void draw() 
{
  background(0);
  noStroke();
  spacey.move();
  spacey.show();
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i].show();
  }
  for (int i =0; i<rock.size();i++){
    rock.get(i).show();
    rock.get(i).move();
  }
   for (int i = 0; i<rock.size(); i++) {
    rock.get(i).move();
    rock.get(i).show();
    float d = dist(spacey.getX(), spacey.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if (d<15) {
      rock.remove(i);
    }
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
