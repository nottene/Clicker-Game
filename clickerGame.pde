int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTION = 4;
final int UTILITIES = 5;
PImage pacman;
PImage pacmanGhost;
PImage selectedImage;
PImage pauseButton;
PImage resumeButton;
float sliderX;
//target variables
float x, y, d;
int score, lives, highestScore;
float vx, vy;

void setup() {
  size(800, 800);
  pacman = loadImage("Pac-Man.png");
  pacmanGhost = loadImage("pacmanGhost.png");
  pauseButton = loadImage("pauseButton.png");
  resumeButton = loadImage("resumeButton.png");
  selectedImage = pacman;
  sliderX = 100;
  mode = INTRO;
  textAlign (CENTER, CENTER);
  while (true) {
    vx = random(-3, 3);
    if ((vx >= 2 && vx <= 3) || (vx >= -3 && vx <= -2)) {
      break;
    }
  }
  while (true) {
    vy = random(-3, 3);
    if ((vy >= 2 && vy <= 3) || (vy >= -3 && vy <= -2)) {
      break;
    }
  }
  //initialize target
  x = width/2;
  y = height/2;
  d = 125;
  score = 0;
  lives = 3;
  highestScore = 0;
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTION) {
    option();
  } else {
    println("Error: Mode = " + mode);
  }
}
