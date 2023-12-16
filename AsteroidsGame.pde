Star[] bubbles = new Star[100];
Spaceship spacey = new Spaceship();
ArrayList <Asteroids> rock = new ArrayList <Asteroids>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
boolean hit =false;
public void setup() 
{
  background(0);
  size(400, 400);
  noStroke();
  for (int i = 0; i<bubbles.length; i++) {
    bubbles[i] = new Star();
  }
  for (int i =0; i<10;i++){
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
   for (int i = 0; i<rock.size(); i++) {
    double d = dist(spacey.getX(), spacey.getY(), rock.get(i).getX(), rock.get(i).getY());
        rock.get(i).move();
        rock.get(i).show();
    if (d<24) {
      hit =true;
    }
    for (int j =0; j<bullets.size(); j++){
      double f = dist(bullets.get(j).getX(), bullets.get(j).getY(), rock.get(i).getX(), rock.get(i).getY());
      if(f<24){
        hit =true;
      }
    }
    if(hit==true){
      rock.remove(i);
    }
    hit=false;
  }
  for (int i =0; i<bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
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
  } else if (key ==' '){
    bullets.add(new Bullet(spacey));
    bullets.get(bullets.size()-1).accelerate(3);
  }
}
