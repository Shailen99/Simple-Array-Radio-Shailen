// Add Odd Future Music
class GOLF
{
  PImage GolfImage;
  int x = 500;
  int y = 300;
  AudioPlayer Golfplayer;
  AudioPlayer Golfplayer2;
  AudioPlayer Golfplayer3;
  GOLF()
  {
    GolfImage = loadImage("Golf_Wang_Logo.png");
  }
  void display()
  {
    //Button
    rect(x, y, 450, 100);
    fill(127, 127, 127);
    image(GolfImage, x, y);
    //Audio
    if (mousePressed)
    {
      if (mouseX>= 500 && mouseX <= 500+450 && mouseY >= 500 && mouseY <= 500+100)
      {
        Golfplayer.play();
      }
    }
  }
}