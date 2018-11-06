boolean gameActive = true;

// When this function is called the dealer draws cards aslong as dealerpoints is less than 16
// This is basicly the AI of the dealer
void dealerRule(){
  while (dealerPoints < 16){
    loadDealerCard(getCardNumber());
  }
}


// When called this function checks who won the game
// Based on some simple if statements
void whoWon(){
  if (playerPoints > dealerPoints || dealerPoints > 21){
    doubleCheck.clear();
    text("You win!", width / 2, height / 2);
      }
  else if (dealerPoints > playerPoints || playerPoints > 21){
    doubleCheck.clear();
    text("Dealer win!", width / 2, height / 2);
    }
  else if (dealerPoints > 16 && dealerPoints == playerPoints && gameActive == true){
    doubleCheck.clear();
    text("Draw!", width / 2, height / 2);
  }
} 
