void pause() {
  //resume button
  strokeWeight(5);
  stroke(#FFFFFF);
  rectButton(680, 750, 40, 110);
  fill(#FFFF00);
  rect(680, 40, 70, 70);
  image(resumeButton, 680, 40, 70, 70);
  //home button
  strokeWeight(5);
  stroke(#FFFFFF);
  rectButton(50, 150, 40, 110);
  fill(#FFFF00);
  rect(50, 40, 100, 70);
  fill(#000000);
  textSize(30);
  text("HOME", 100, 75);
}

void pauseClicks() {
  if (mouseX > 680 && mouseX < 750 && mouseY > 40 && mouseY < 110) {
    mode = GAME;
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
}
