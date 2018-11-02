void loadPlayerCard(int cardNumber){
  createCard(getCardName(cardNumber), 'p'); // Player position
  playerPoints = playerPoints + (cardValue(value[cardNumber % 13]));
  
  println(cardNumber);
  println(cardValue(value[cardNumber % 13]));
  println("Playerpoints: " + playerPoints);
  
  // To get a specific object of the collection >>> doubleCheck.get(x);
  //println(doubleCheck); // Print double check list
}

void loadDealerCard(int cardNumber){
  createCard(getCardName(cardNumber), 'd'); // Dealer position
  println(cardNumber);
  println(cardValue(value[cardNumber % 13]));
}

void loadText(){
  fill(255);
  textAlign(CENTER);
  textSize(22);
  text("HIT", width / 3, height / 1.2, 40, 40);
  textSize(32);
  text("Dealer draws on 16 or less", width / 2, height / 2.5);
}

void loadHitButton(){
  fill(0, 255, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(width / 3, height / 1.2, 80, 80);
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
  float detectHit = dist(mouseX, mouseY, width / 3, height / 1.2);
  if (detectHit < 40){
    int cardNumber =  getCardNumber();
    loadPlayerCard(cardNumber);
    displayPoints();
    
    
  }
}

void displayPoints(){
  rectMode(CENTER);
  noStroke();
  fill(0,153,0);
  rect(width / 2, height / 2, 100, 100);
  fill(255);
  text(playerPoints, width/2, height/2);
  
  
}

void resetTable(){
  playerPoints = 0;
  playerCards = 0;
  rectMode(CENTER);
  // Clears points
  noStroke();
  fill(0,153,0);
  rect(width / 2, height / 2, 100, 100);
  // Clears player cards
  rectMode(CORNER);
  rect(width/2.5, height/1.5, 400, 200);
  // Clears dealer cards
  rect(width/2.5, height/40, 350, 200);
  // Resets cardplaceholders
  rectMode(CENTER);
  fill(0, 100, 0);
  stroke(255);
  strokeWeight(4);
  rect(width / 2, height / 1.2, 76, -100, 5); // Placeholder for player
  rect(width / 2, height / 7, 76, 100, 5); // Placeholder for dealer
  
}
