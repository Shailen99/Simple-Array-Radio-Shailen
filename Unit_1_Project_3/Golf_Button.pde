// Songs: Who Dat Boy Tyler, Thinkin Bout You Frank, Oldie OF Vol 2
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
    Golfplayer = minim.loadFile("Oldie - Odd Future.mp3");
    Golfplayer2 = minim.loadFile("Frank Ocean-Thinking About You WLyrics.mp3");
    Golfplayer3 = minim.loadFile("Tyler The Creator - Aint Got Time (Audio).mp3");
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
      if (mouseX>= 500 && mouseX <= 500+450 && mouseY >= 300 && mouseY <= 300+100)
      {
        Golfplayer.play();
        if (Golfplayer.position() >= Golfplayer.length())
        {
          Golfplayer.pause();
          Golfplayer2.play();
          if (Golfplayer2.position() >= Golfplayer2.length())
          {
            Golfplayer2.pause();
            Golfplayer3.play();
          }
        }
      }
    }
  }
}