void gameover() {
  background(#000000);
  fill(#FFFF00);
  textSize(100);
  text("GAMEOVER!!!", 400, 200);
  textSize (50);
  text ("Highest Score: " + highestScore, width/2, 400);

  //home button
  rectButton(200, 350, 500, 600);
  strokeWeight(5);
  fill(#FFFF00);
  rect(200, 500, 150, 100);
  fill(#000000);
  textSize(30);
  text("HOME", 275, 550);

  //restart button
  rectButton(450, 600, 500, 600);
  strokeWeight(5);
  fill(#FFFF00);
  rect(450, 500, 150, 100);
  fill(#000000);
  textSize(30);
  text("RESTART", 525, 550);

  score = 0;
  lives = 3;
}

void gameoverClicks() {
  if (mouseX > 200 && mouseX < 350 && mouseY > 500 && mouseY < 600) {
    mode = INTRO;
    x = width/2;
    y = height/2;
  while (true) {
     vx = random(-3, 3);
     if((vx >= 2 && vx <= 3) || (vx >= -3 && vx <= -2)){
       break;
     }
  }
  while (true) {
    vy = random(-3, 3);
    if((vy >= 2 && vy <= 3) || (vy >= -3 && vy <= -2)){
       break;
     }
  }
  }
  if (mouseX > 450 && mouseX < 600 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
    x = width/2;
    y = height/2;
  while (true) {
     vx = random(-3, 3);
     if((vx >= 2 && vx <= 3) || (vx >= -3 && vx <= -2)){
       break;
     }
  }
  while (true) {
    vy = random(-3, 3);
    if((vy >= 2 && vy <= 3) || (vy >= -3 && vy <= -2)){
       break;
     }
  }
  }
}
