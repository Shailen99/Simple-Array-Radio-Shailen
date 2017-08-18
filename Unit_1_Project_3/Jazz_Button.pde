//Songs: So What (Miles Davis), Cherokee (Kamasi Washington), The Thorn (Willie Jones III)
class Jazz
{
  PFont Jazz;
  int x = 500;
  int y = 500;
  AudioPlayer player;
  AudioPlayer player2;
  AudioPlayer player3;
  Jazz()
  {
    Jazz = createFont("Arial", 16, true);
    player = minim.loadFile("songJazz1.mp3", 2048);
    player2 = minim.loadFile("Kamasi Washington - Cherokee.mp3", 2048);
    player3 = minim.loadFile("WIllie Jones III - The Thorn.mp3", 2048);
  }
  void display()
  {
    //Button
    rect(x, y, 450, 100);
    fill(127, 127, 127);
    //Text
    textFont(Jazz, 100);                
    fill(255);
    text("Jazz Station", 500, 500); 
    //Audio
    if (mousePressed)
    {
      if (mouseX>= x && mouseX <= x+450 && mouseY >= Y && mouseY <= y+100)
      {
        player.play();
        if (player.position() >= player.length())
        {
          player.pause();
          player2.play();
          if (player2.position() >= player2.length())
          {
            player2.pause();
            player3.play();
          }
        }
      }
    }
  }
}