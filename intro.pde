void intro() {
  background(#000000);
  strokeWeight(5);
  fill(#FFFF00);
  textSize(100);
  text("Pac-Man Smasher", 400, 100);
  image(pacman, 300,250,200,200);
  //start button
  rectButton(150,350,500,600);
  fill(#FFFF00);
  rect(150,500,200,100);
  fill(#000000);
  textSize(40);
  text("SMASH" , 250, 550);
  //option button
  rectButton(450,650,500,600);
  fill(#FFFF00);
  rect(450, 500, 200, 100);
  fill(#000000);
  textSize(40);
  text("OPTIONS", 550, 550);
}

void introClicks() {
  if (mouseX > 150 && mouseX < 350 && mouseY > 500 && mouseY < 600){
    mode = GAME;
  }
  if (mouseX > 450 && mouseX < 650 && mouseY > 500 && mouseY < 600) {
    mode = OPTION;
  }
}
