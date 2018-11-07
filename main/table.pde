int buttonSize = 80;

// Function that displayes the player card drawn. This function take in an integer. This integer is supposed to be the getCardNumber() function
// Also keeps track of player points
void displayPlayerCard(int cardNumber){
  createCard(getCardName(cardNumber), 'p'); // Player position
  
  // As said earlier modolus 13 returns the value of the card.
  playerPoints = playerPoints + (cardValue(value[cardNumber % 13]));
}


// Function that displayes the dealer card drawn. This function take in an integer. This integer is supposed to be the getCardNumber() function
// Also keeps track of dealer points
void displayDealerCard(int cardNumber){
  createCard(getCardName(cardNumber), 'd'); // Dealer position
  
  // As said earlier modolus 13 returns the value of the card.
  dealerPoints = dealerPoints + (cardValue(value[cardNumber % 13]));
}


// Display all centered text with size 32
void displayText(String text, float w, float h){
  textAlign(CENTER);
  textSize(32);
  text(text, w, h);
}


// Display the current card points of player
// The function can be used to display rgb button with text with width and height on the screen
void displayButton(String text, float w, float h, int r, int g, int b){
  fill(r, g, b);
  stroke(255);
  strokeWeight(2);
  ellipse(w, h, buttonSize, buttonSize);
  fill(255);
  textAlign(CENTER);
  textSize(buttonSize / 4);
  text(text, w, h + buttonSize / 3.5, buttonSize, buttonSize);
}


// Display a card stack for aesthetics and back side of dealer cards
void loadCardBack(){
  imageMode(CENTER);
  cardBackImg = loadImage("../resources/Cards/Card Back.gif");
  // Create 5 cardbacks with a offset at 2 pixels
  for (int i = 0; i <= 10; i += 2){
    image(cardBackImg, width / 1.2 + i, height / 7 + i);
  }
  image(cardBackImg, width / 2 + (cardOffsetX * 0), height / 7 + (cardOffsetY * 0)); // Dealer card back 1
  image(cardBackImg, width / 2 + (cardOffsetX * 1), height / 7 + (cardOffsetY * 1)); // Dealer card back 2
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


// Display the current card points of player
// The function can be used to display and remove previous card points
// Local int 'points' can either be playerPoints or dealerPoints
void displayPoints(int points, float w, float h){
  rectMode(CENTER);
  noStroke();
  textAlign(CENTER);
  textSize(32);
  fill(0, 153, 0);
  rect(w, h, 80, 80);
  fill(255);
  text(points, w, h); 
}


// Display the score for both player and dealer
void displayWins(String text, float w, float h){
  rectMode(CENTER);
  textSize(20);
  textAlign(LEFT);
  noStroke();
  fill(0, 153, 0);
  rect(w, h, 430, 30);
  fill(255);
  text(text, w, h); 
}


void mousePressed(){
  // Checks if mouse is pressing 'hit' button. Do something
  // Hit button and stand button will be disabled if gameActive == false
  float detectHit = dist(mouseX, mouseY, width / 3, height / 1.2);
  if (detectHit < buttonSize / 2 && gameActive == true){
    displayPlayerCard(getCardNumber());
    displayPoints(playerPoints, width / 1.5, height / 1.2);
    // Bust if player draws is over 21
    if (playerPoints > 21){
      doubleCheck.clear();
      dealerRoundWins++;
      text("Dealer wins!", width / 2, height / 2);
      displayWins("Player: "+ playerRoundWins + " | Dealer: " + dealerRoundWins, 5, 20);
      gameActive = false;
        }
      }
   float detectStand = dist(mouseX, mouseY, width / 4.25, height / 1.2);
   if (detectStand < buttonSize / 2 && gameActive == true){
     // Stand and dealer draws if under 16
     displayDealerCard(getCardNumber());
     displayDealerCard(getCardNumber());
     displayPoints(dealerPoints, width / 1.5, height / 7);
     dealerRule();
     gameActive = false;
     whoWon();
    }
   float detectReset = dist(mouseX, mouseY, width / 7.25, height / 1.2);
   if (detectReset < buttonSize / 2 && gameActive == false){
     resetTable();
     gameActive = true;
  }
}


// Reset the whole table
void resetTable(){
  //Reset points
  playerPoints = 0;
  playerCards = 0;
  dealerPoints = 0;
  dealerCards = 0;
  
  // Load casino table
  background(0, 153, 0);
  loadCardPlaceholder();
  loadCardBack();
  displayButton("HIT", width / 3, height / 1.2, 0, 255, 0); // 'Hit' button
  displayButton("STAND", width / 4.25, height / 1.2, 255, 0, 0); // 'Stand' button
  displayButton("RESET", width / 7.25, height / 1.2, 155, 155, 155); // 'Reset' button
  displayText("Dealer draws on 16 or less", width / 2, height / 2.5);
  
  // Generate and dispaly 2 starting cards for the player only
  displayPlayerCard(getCardNumber());
  displayPlayerCard(getCardNumber());
  
  // Display points and wins after the cards has been generated
  displayPoints(playerPoints, width / 1.5, height / 1.2);
  displayWins("Player: "+ playerRoundWins + " | Dealer: " + dealerRoundWins, 5, 20);
}
