//Radios to add Hip Hop Radio, Classics Radio and Indie Radio. For Now
//What else to add?Need to add volume changer

import ddf.minim.*;
Minim minim;
//Cursor
Mouse myCursor;
//Jazz Button
Jazz myJazz;
//Golf Button
GOLF myGolf;
void setup()
{
  minim = new Minim(this);
  noStroke();
  noFill();
  myCursor = new Mouse();
  myJazz= new Jazz();
  myGolf = new GOLF();
  fullScreen();
}
void draw()
{
  background(127, 0, 0);
  //Jazz Button
  myJazz.display();
  myGolf.display();
  myCursor.display();
}