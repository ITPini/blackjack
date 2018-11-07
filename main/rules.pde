boolean gameActive = true;

int dealerRoundWins = 0;
int dealerPoints;
int playerRoundWins = 0;
int playerPoints;

// When this function is called the dealer draws cards aslong as dealerpoints is less than 16
// This is basicly the AI of the dealer
void dealerRule(){
  while (dealerPoints < 16){
    displayDealerCard(getCardNumber());
    displayPoints(dealerPoints, width / 1.5, height / 7);
  }
}


// When called this function checks who won the game
// Based on some simple if statements
void whoWon(){
  if (playerPoints > dealerPoints || dealerPoints > 21){
    doubleCheck.clear();
    playerRoundWins++;
    textAlign(CENTER);
    textSize(32);
    displayText("You win!", width / 2, height / 2);
    displayWins("Player: "+ playerRoundWins + " | Dealer: " + dealerRoundWins, 5, 20);
  }
  else if (dealerPoints > playerPoints || playerPoints > 21){
    doubleCheck.clear();
    dealerRoundWins++;
    displayText("Dealer win!", width / 2, height / 2);
    displayWins("Player: "+ playerRoundWins + " | Dealer: " + dealerRoundWins, 5, 20);
  }
  else if (dealerPoints >= 16 && playerPoints == dealerPoints){
    doubleCheck.clear();
    textAlign(CENTER);
    textSize(32);
    displayText("Draw!", width / 2, height / 2);
    displayWins("Player: "+ playerRoundWins + " | Dealer: " + dealerRoundWins, 5, 20);
  }
} 
