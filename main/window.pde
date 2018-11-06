void loadPlayerCard(int cardNumber){
  createCard(getCardName(cardNumber), 'p'); // Player position
  playerPoints = playerPoints + (cardValue(value[cardNumber % 13]));
  
  //println(cardNumber);
  //println(cardValue(value[cardNumber % 13]));
  println("Playerpoints: " + playerPoints);
  
  // To get a specific object of the collection >>> doubleCheck.get(x);
  println(doubleCheck); // Print double check list
}

void loadDealerCard(int cardNumber){
  createCard(getCardName(cardNumber), 'd'); // Dealer position
  dealerPoints = dealerPoints + (cardValue(value[cardNumber % 13]));
  
  println("Dealer card: " + cardNumber);
  println("Dealerpoints: " + dealerPoints);
}

void loadText(){
  fill(255);
  textAlign(CENTER);
  textSize(10);
  text("HIT", width / 3, height / 1.2, 40, 40);
  text("STAND", width / 4.25, height / 1.2, 40, 40);
  textSize(32);
  text("Dealer draws on 16 or less", width / 2, height / 2.5);
}

void loadHitButton(){
  fill(0, 255, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(width / 3, height / 1.2, 80, 80);
}

void loadStandButton(){
  fill(255, 0, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(width / 4.25, height / 1.2, 80, 80);
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
    displayPlayerPoints();
  }
   float detectHit2 = dist(mouseX, mouseY, width / 4.25, height / 1.2);
   if (detectHit2 < 40){
     println("hello");
     // If stand dealer draws if under 16
     dealerRule();
     displayDealerPoints();
     standButtonHit = true;
   }  
}


void displayPlayerPoints(){
  rectMode(CENTER);
  noStroke();
  fill(0,153,0);
  rect(width / 2, height / 2, 300, 100);
  fill(255);
  text(playerPoints, width/2, height/2); 
}

void displayDealerPoints(){
  rectMode(CENTER);
  noStroke();
  fill(0,153,0);
  rect(width / 2, height / 2, 100, 100);
  fill(255);
  text(dealerPoints, width/2, height/2);
}

void resetTable(){
  playerPoints = 0;
  playerCards = 0;
  dealerCards = 0;
  dealerPoints = 0; 
  rectMode(CENTER);
  // Clears points
  noStroke();
  fill(0,153,0);
  rect(width / 2, height / 2, 400, 100);
  // Clears player cards
  rectMode(CORNER);
  rect(width/2.5, height/1.5, 400, 200);
  // Clears dealer cards
  rect(width/2.5, height/40, 350, 200);
  // Clears dealercards
  rectMode(CENTER);
  noStroke();
  fill(0, 153, 0);
  rect(width / 2, height / 6, 500, 225);
  // Resets cardplaceholders
  rectMode(CENTER);
  fill(0, 100, 0);
  stroke(255);
  strokeWeight(4);
  rect(width / 2, height / 1.2, 76, -100, 5); // Placeholder for player
  rect(width / 2, height / 7, 76, 100, 5); // Placeholder for dealer 
  loadDealerCard(getCardNumber());
  loadDealerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
}
