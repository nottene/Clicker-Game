void game() {
  background(#000000);

  //pause button
  strokeWeight(5);
  stroke(#FFFFFF);
  rectButton(680, 750, 40, 110);
  fill(#FFFF00);
  rect(680, 40, 70, 70);
  image(pauseButton, 685, 45, 60, 60);
  //home button
  strokeWeight(5);
  stroke(#FFFFFF);
  rectButton(50, 150, 40, 110);
  fill(#FFFF00);
  rect(50, 40, 100, 70);
  fill(#000000);
  textSize(30);
  text("HOME", 100, 75);
  //target bounce zone
  noFill();
  strokeWeight(10);
  stroke(#FFFF00);
  rect(40, 150, 720, 610);

  fill(#FFFFFF);
  textSize(40);
  text ("Score: " + score, 400, 20);
  text ("Lives: " + lives, 400, 65);
  text ("Highest Score: " + highestScore, 400, 110);

  //display target
  image(selectedImage, x-d/2, y-d/2, d, d);
  //moving
  x = x + vx;
  y = y + vy;
  //bouncing
  if (x < (40+d/2) || x > (760-d/2)) {
    vx = vx * -1;
  }
  if (y < (150+d/2) || y > (760-d/2)) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if (mouseX > 40 && mouseX < 760 && mouseY > 150 && mouseY < 760) {
    if (dist(mouseX, mouseY, x, y) < d/2) {
      vx = vx*1.15;
      vy = vy*1.15;
      score = score + 1;
    } else {
      lives = lives -1;
    }
  }
  if (mouseX > 680 && mouseX < 750 && mouseY > 40 && mouseY < 110) {
    mode = PAUSE;
  }
  if (mouseX > 50 && mouseX < 150 && mouseY > 40 && mouseY < 110) {
    mode = INTRO;
    x = width/2;
    y = height/2;
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
  }
  if (score > highestScore) {
    highestScore = score;
  }
  if (lives == 0) {
    mode = GAMEOVER;
  }
}
