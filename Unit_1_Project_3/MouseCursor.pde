class Mouse
{
  PImage MouseCursor;

  Mouse()
  {
    MouseCursor = loadImage("customcursor.png");
    MouseCursor.resize(100, 100);
  }

  void display()
  {
    noCursor();
    image(MouseCursor, mouseX, mouseY);
  }
}