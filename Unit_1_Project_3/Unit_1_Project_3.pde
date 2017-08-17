import ddf.minim.*;
Minim minim;
//Cursor
Mouse myCursor;
//Edm Button
Jazz myJazz;
void setup()
{
  noStroke();
  noFill();
  myCursor = new Mouse();
  myJazz= new Jazz();
  fullScreen();
}
void draw()
{
  background(127,0,0);
  myJazz.display();
  myCursor.display();
}