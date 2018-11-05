void dealerRule(){
  while (dealerPoints < 16){
    loadDealerCard(getCardNumber());
  }
  dealerPoints = 0;
}

void whoWon(){
  if (playerPoints == 21){
     resetTable();
    doubleCheck.clear();
   text("You win!", width / 2, height / 2);
   //delay(600);
  
  }
 else if (playerPoints > 21 && standButtonHit == false){
    resetTable();
    doubleCheck.clear();
    text("Dealer wins!", width / 2, height / 2);
    //delay(600);
   
  }
  else if (playerPoints > dealerPoints && playerPoints <= 21 && standButtonHit == true){
    resetTable();
    doubleCheck.clear();
   text("You win!", width / 2, height / 2);
   //delay(600);
  
  }
  else if (dealerPoints > playerPoints && dealerPoints <=21 && standButtonHit == true ){
    resetTable();
    doubleCheck.clear();
   text("Dealer wins!", width / 2, height / 2);
   //delay(600);

  }
} 
