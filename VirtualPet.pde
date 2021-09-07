import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int y = 200;
int rButton = 0;
void setup() {
  size(300, 300);
  arduino = new Arduino(this, Arduino.list()[1], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
 
void draw()
{
  y = arduino.analogRead(5);
  System.out.println(y);
  if (y > 15) {
    y = 15;
    
  rButton = arduino.analogRead(1);
  System.out.println(rButton);
  if (rButton>500)
  fill(#20F275);
  else 
    fill(#8694E0);
    triangle(40,150,175,20,175,280);
  }
  background(#A7CFFF);
  //fill(#8694E0);
  triangle(40,150,175,20,175,280);
  fill(#FBFF3B);
  triangle(175,150,225,115-+y,225,200-+y);
  fill(#FCFCFF);
  ellipse(75,125,10,10);
  fill(#202021);
  ellipse(75,125,3,3);
  noFill();
  arc(40,150,75,75,0,PI/4);
  fill(#FCFCFF);
  ellipse(50,50,10,10);
  ellipse(75,75,10,10);
  ellipse(40,70,10,10);
  ellipse(50,125,10,10);
  ellipse(65,250,10,10);
  ellipse(50,275,10,10);
  ellipse(90,50,10,10);
  ellipse(125,30,10,10);
  ellipse(114.2,25,10,10);
  }
