int buttonSize = 80;

// Function that displayes the player card drawn. This function take in an integer. This integer is supposed to be the getCardNumber() function
// Also keeps track of playerPoints
void displayPlayerCard(int cardNumber){
  createCard(getCardName(cardNumber), 'p'); // Player position
  
  // As said earlier modolus 13 returns the value of the card.
  playerPoints = playerPoints + (cardValue(value[cardNumber % 13]));
}


// Function that displayes the dealer card drawn. This function take in an integer. This integer is supposed to be the getCardNumber() function
// Also keeps track of dealerPoints
void displayDealerCard(int cardNumber){
  createCard(getCardName(cardNumber), 'd'); // Dealer position
  
  // As said earlier modolus 13 returns the value of the card.
  dealerPoints = dealerPoints + (cardValue(value[cardNumber % 13]));
}


// Loads all the text displayed on screen
void loadText(){
  fill(255);
  textAlign(CENTER);
  textSize(buttonSize / 4);
  text("HIT", width / 3, height / 1.2 + buttonSize / 3.5, buttonSize, buttonSize);
  text("STAND", width / 4.25, height / 1.2 + buttonSize / 3.5, buttonSize, buttonSize);
  text("RESET", width / 7.25, height / 1.2 + buttonSize / 3.5, buttonSize, buttonSize);
  textSize(32);
  text("Dealer draws on 16 or less", width / 2, height / 2.5);
}


// Displays the hit button onto the screen
void loadHitButton(){
  fill(0, 255, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(width / 3, height / 1.2, buttonSize, buttonSize);
}


// Displays the stand button onto the screen
void loadStandButton(){
  fill(255, 0, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(width / 4.25, height / 1.2, buttonSize, buttonSize);
}


// Displays the reset button onto the screen
void loadResetButton(){
  fill(155);
  stroke(255);
  strokeWeight(2);
  ellipse(width / 7.25, height / 1.2, buttonSize, buttonSize);
}


// Display a card stack for aesthetics
void loadCardStack(){
  imageMode(CENTER);
  cardbackImg = loadImage("../resources/Cards/Card Back.gif");
  // Create 5 cardbacks with a offset at 2 pixels
  for (int i = 0; i <= 10; i += 2){
    image(cardbackImg, width / 1.2 + i, height / 7 + i);
  }
}


// Displays the cardPlaceHolder onto the screen (These arent supposed to be seen)
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
  if (detectHit < buttonSize / 2 && gameActive == true){
    displayPlayerCard(getCardNumber());
    displayPlayerPoints();
    // Bust if player draws is over 21
    if (playerPoints > 21){
      doubleCheck.clear();
      dealerRoundWins++;
      text("Dealer wins!", width / 2, height / 2);
      println("Dealer: " + dealerRoundWins);
      gameActive = false;
        }
      }
   float detectStand = dist(mouseX, mouseY, width / 4.25, height / 1.2);
   if (detectStand < buttonSize / 2 && gameActive == true){
     // Stand and dealer draws if under 16
     dealerRule();
     gameActive = false;
     whoWon();
    }
   float detectReset = dist(mouseX, mouseY, width / 7.25, height / 1.2);
   if (detectReset < buttonSize / 2){
     resetTable();
     gameActive = true;
  }
}


void displayPlayerPoints(){
  rectMode(CENTER);
  noStroke();
  fill(0, 153, 0);
  rect(width / 2, height / 2, 300, 100);
  fill(255);
  text(playerPoints, width / 2, height/2); 
}


void displayDealerPoints(){
  rectMode(CENTER);
  noStroke();
  fill(0, 153, 0);
  rect(width / 2, height / 2, 100, 100);
  fill(255);
  text(dealerPoints, width / 2, height / 2);
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
  rect(width / 2.5, height / 1.5, 400, 200);
  // Clears dealer cards
  rect(width / 2.5, height / 40, 350, 200);
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
  fill(255);
  displayDealerCard(getCardNumber());
  displayDealerCard(getCardNumber());
  displayPlayerCard(getCardNumber());
  displayPlayerCard(getCardNumber());
  displayPlayerPoints();
}
