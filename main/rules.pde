void dealerRule(){
  while (dealerPoints < 16){
    loadDealerCard(getCardNumber());
  }
}

void whoWon(){
  if (playerPoints > dealerPoints || dealerPoints > 21){
    doubleCheck.clear();
    text("You win!", width / 2, height / 2);
  }
  else if (dealerPoints > playerPoints || playerPoints > 21){
    doubleCheck.clear();
    text("Dealer win!", width / 2, height / 2);
  }
  else if (dealerPoints == 21 && playerPoints == 21){
    doubleCheck.clear();
    text("Draw!", width / 2, height / 2);
  }
} 
