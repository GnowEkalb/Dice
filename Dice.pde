dice bob;

void setup()
{
  background(50);
  size(1000, 1000);
  textAlign(CENTER, CENTER);
  noLoop();
}
void mousePressed()
{
  sum = 0;
  redraw();
}
int v;
int sum = 0;
int high;
void draw()
{
  for (int j = 50; j < 900; j+=100) {
    for (int i = 50; i < 1000; i+=100) {
      v = (int)(Math.random()*6 + 1);
      bob = new dice(i, j, v);
      bob.show();
      bob.roll();
      sum = sum + v;
      if (sum > high){
      high = sum;}
    }
  }
  noStroke();
  fill(50);
  rect(0, 910, 1000, 90);
  fill(250);
  textSize(24);
  text("Sum of Dice: " + sum, 500, 920);
  text("Highscore: " + high, 500, 950);
}

class dice
{
  int value, myX, myY;

  dice(int x, int y, int v)
  {
    value = v;
    myX = x;
    myY = y;
  }

  void roll()
  {
    value = ((int)(Math.random()*6 + 1));
  }

  void show()
  {
    stroke(20);
    strokeWeight(3);
    fill(250);
    rect(myX-50, myY-50, 100, 100, 15);
    fill(0);
    if (value == 1) {
      ellipse(myX, myY, 15, 15);
    } else if (value == 2) {
      ellipse(myX+27, myY-27, 15, 15);
      ellipse(myX-27, myY+27, 15, 15);
    } else if (value == 3) {
      ellipse(myX, myY, 15, 15);
      ellipse(myX+27, myY-27, 15, 15);
      ellipse(myX-27, myY+27, 15, 15);
    } else if (value == 4) {
      ellipse(myX-27, myY-27, 15, 15);
      ellipse(myX+27, myY-27, 15, 15);
      ellipse(myX+27, myY+27, 15, 15);
      ellipse(myX-27, myY+27, 15, 15);
    } else if (value == 5) {
      ellipse(myX, myY, 15, 15);
      ellipse(myX-27, myY-27, 15, 15);
      ellipse(myX+27, myY-27, 15, 15);
      ellipse(myX+27, myY+27, 15, 15);
      ellipse(myX-27, myY+27, 15, 15);
    } else if (value == 6) {
      ellipse(myX-27, myY-27, 15, 15);
      ellipse(myX+27, myY-27, 15, 15);
      ellipse(myX+27, myY+27, 15, 15);
      ellipse(myX-27, myY+27, 15, 15);
      ellipse(myX-27, myY, 15, 15);
      ellipse(myX+27, myY, 15, 15);
    }
  }
}
