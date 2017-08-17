//Radios to add GOLF Radio, Hip Hop Radio, Classics Radio and Indie Radio. For Now
//What else to add?Need to add volume changer
// Jazz Station: About 40 percent done. Button added now to add music

import ddf.minim.*;
Minim minim;
//Cursor
Mouse myCursor;
//Edm Button
Jazz myJazz;
void setup()
{
  minim = new Minim(this);
  noStroke();
  noFill();
  myCursor = new Mouse();
  myJazz= new Jazz();
  fullScreen();
}
void draw()
{
  background(127, 0, 0);
  //Jazz Button
  myJazz.display();
  myCursor.display();
}