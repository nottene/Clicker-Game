void option() {
  background(#000000);
  noFill();
  stroke(#FFFF00);
  strokeWeight(10);
  rect(50, 50, 400, 400);
  fill(#FFFF00);
  textSize(100);
  text("OPTIONS", 250, 650);
  //pacman button
  rectButton(500, 700, 50, 250);
  strokeWeight(5);
  fill(#FFFF00);
  rect(500, 50, 200, 200);
  image(pacman, 500, 50, 200, 200);
  //pacmanGhost button
  rectButton(500, 700, 300, 500);
  strokeWeight(5);
  fill(#FFFF00);
  rect(500, 300, 200, 200);
  image(pacmanGhost, 500, 300, 200, 200);
  //slider
  slider();
  //indicator
  fill(255);
  stroke(0);
  strokeWeight(5);
  image(selectedImage, 250-d/2, 250-d/2, d, d);

  //confirm button
  rectButton(550, 600, 600, 700);
  strokeWeight(5);
  fill(#FFFF00);
  rect(550, 600, 150, 100);
  fill(#000000);
  textSize(30);
  text("CONFIRM", 625, 650);
}

void optionClicks() {
  if (mouseX > 550 && mouseX < 700 && mouseY > 600 && mouseY < 700) {
    mode = INTRO;
  }
  if (mouseX > 500 && mouseX < 700 && mouseY > 50 && mouseY < 250) {
    selectedImage = pacman;
  }
  if (mouseX > 500 && mouseX < 700 && mouseY > 300 && mouseY < 500) {
    selectedImage = pacmanGhost;
  }
}

void mouseDragged() {
  controlSlider();
}

void slider() {
  d = map(sliderX, 100, 400, 125, 300);
  strokeWeight(5);
  fill(#000000);
  stroke(#FFFF00);
  line(100, 500, 400, 500);
  if (dist(sliderX, 500, mouseX, mouseY)<=20) {
    stroke(#FFFFFF);
  } else {
    stroke(#FFFF00);
  }
  circle(sliderX, 500, 40);
}

void controlSlider() {
  if (mouseX > 100 && mouseX < 400 && mouseY > 485 && mouseY < 515) {
    sliderX = mouseX;
  }
}
