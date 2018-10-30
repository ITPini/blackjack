void loadCard(){
  int cardNumber = getCardNumber();
  createCard(getCardName(cardNumber), 'p'); // Player position
  createCard(getCardName(cardNumber), 'p');
  
  createCard(getCardName(cardNumber), 'd'); // Dealer position
  createCard(getCardName(cardNumber), 'd');
  println(cardNumber);
  println(cardValue(value[cardNumber%13]));
  // To get a specific object of the collection >>> doubleCheck.get(x);
  //println(doubleCheck); // Print double check list
}

void loadText(){
  fill(255);
  textAlign(CENTER);
  textSize(22);
  text("HIT", width / 1.5, height / 1.2, 40, 40);
  textSize(32);
  text("Dealer draws on 16 or less", width / 2, height / 2.5);
}

void loadHitButton(){
  fill(0, 255, 0);
  stroke(255);
  strokeWeight(2);
  rect(width / 1.5, height / 1.2, 80, 80, 3);
}

void loadCardStack(){
  imageMode(CENTER);
  cardbackImg = loadImage("../resources/Cards/Card Back.gif");
  // Create 5 cardbacks with a offset at 2 pixels
  for (int i = 0; i <= 10; i += 2){
    image(cardbackImg, width / 1.2 + i, height / 7 + i);
  }
}

void loadCardPlaceholder(){
  fill(0, 100, 0);
  stroke(255);
  strokeWeight(4);
  rectMode(CENTER);
  rect(width / 2, height / 1.2, 76, -100, 5); // Placeholder for player
  rect(width / 2, height / 7, 76, 100, 5); // Placeholder for dealer
  rect(width / 1.2, height / 7, 76, 100, 5); // Placeholder for cardstack
}

void mousePressed(){
  // Checks if mouse is pressing 'hit' button. Do something
  if (mouseX > width / 1.5 - 40 && mouseX < width / 1.5 + 40 && mouseY > height / 1.2 - 40 && mouseY < height / 1.2 + 40){
    createCard(getCardName(getCardNumber()), 'p');
  }
}
