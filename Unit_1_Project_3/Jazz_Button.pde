//Songs: So What (Miles Davis), Cherokee (Kamasi Washington), The Thorn (Willie Jones III)
class Jazz
{
  PFont Jazz;
  int x = 500;
  int y = 500;
  AudioPlayer player;
  AudioPlayer player2;

  Jazz()
  {
    Jazz = createFont("Arial", 16, true);
    player = minim.loadFile("songJazz1.mp3", 2048);
    player2 = minim.loadFile("When It Rains, It Pours.wav");
  }
  void display()
  {
    rect(x, y, 450, 100);
    fill(127, 127, 127);
    //Audio
    if (mousePressed)
    {
      if (mouseX>= x && mouseX <= x+450 && mouseY >= Y && mouseY <= y+100)
      {
        player.play();
        if (player.position() == player.length())
        {
          player2.play();
        }
      }
    }
  }
}