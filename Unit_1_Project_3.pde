// Rock and Roll Button
float X = 1000;
float Y = 200;
float W = 150;
float H = 80;
// Electronic Button
float X2 = 50;
float Y2 = 200;
float W2 = 150;
float H2 = 80;
int c;
//Music for Rock and Roll Button
import ddf.minim.*;
Minim minim;
AudioPlayer [] player = new AudioPlayer [3];
String Songs[] = new String[]
  {
  "GhostOfYou.mp3", "JesusOfSuburbia.mp3", "Victorious.mp3"
};
AudioPlayer [] player2 = new AudioPlayer[3];
String Songs2[] = new String[]
  {
  "LeanOn.mp3", "Desiigner - Tiimmy Turner.mp3", "Calvin Harris & Disciples - How Deep Is Your Love (Audio).mp3"
};
//Text
PFont f;//Loading Font in for Name
//Mouse Cursor
int num2 = 50;
int[] x = new int[num2];
int[] y = new int[num2];

PImage EDM, Rock;
void setup()
{
  EDM = loadImage("EDMLogo.png");
  Rock = loadImage("RockLogo.png");
  fullScreen();
  noStroke();
  fill(255, 102);
  //Audio Being Set Up
  minim = new Minim(this);//Loading Song
  for (int c=0; c<3; c++)
  {
    player[c] = minim.loadFile(Songs[c], 2048);
    player2[c] = minim.loadFile(Songs2[c], 2048);
  }
  for (int d=0; d<3; d++)
  {
    player2[c] = minim.loadFile(Songs2[c], 2048);
  }

  f = createFont("Arial", 16, false);//Create the font and decide which file it i
}
void draw()
{
  EDM = loadImage("EDMLogo.png");
  Rock = loadImage("RockLogo.png");
  image(EDM, 50, 250);
  image(Rock, 1000, 250);
  textFont(f, 50);//Text Size and Loading the Font
  fill(0);//Color of Text
  textAlign(CENTER);// Where should the text be put
  text("Arizona Western College Radio", width/2, 60);// What is the Text

  background(255, 0, 0);
  rect(X, Y, W, H);//Rectangle Coordinates for Rock & Roll
  fill(255);//Color of Rectangle
  rect(X2, Y2, W2, H2);//Rectangle Coordinates for Electronic
  fill(255);
  {//Mouse Cursor
    for (int i = num2-1; i > 0; i--) 
    {
      x[i] = x[i-1];
      y[i] = y[i-1];
    }
    x[0] = mouseX;
    y[0] = mouseY;
    for (int i = 0; i < num2; i++) 
    {
      ellipse(x[i], y[i], i/2.0, i/2.0);

      if (mousePressed)
      {
        if (mouseX>= X && mouseX <= X+W && mouseY >= Y && mouseY <= Y+H)
        {  
          {
            for (int c=0; c<3; c++)
            { 
              player2[c].pause();
              player2[c].rewind();
              player[c].play();
            }
          }
        }
      }
      if (mousePressed)
      {
        if (mouseX>= X2 && mouseX <= X2+W2 && mouseY >= Y2 && mouseY <= Y2+H2)
        {
          for (int d=0; d<3; d++)
          {
            player[c].pause();
            player[c].rewind();
            player2[c].play();
          }
        }
      }
    }
  }
}