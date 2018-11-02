int playerCards = 0; // Used to calculate pixel offset of cards for player
int dealerCards = 0; // Used to calculate pixel offset of cards for dealer

// Generate a card based on a number between 0-52
public int getCardNumber(){
  // When "Hit" button clicked
  int intRand = int(random(suit.length * face.length));
  // Check if the card number already is in doubleCheck collection
  for (int i = 0; i < doubleCheck.size(); i++){
    if (doubleCheck.get(i) == intRand){
      intRand = int(random(suit.length * face.length));
    }
  }
  doubleCheck.add(intRand);
  return intRand;
}

// Create a string for a card used to load the .gif files
public String getCardName(int number){
  String cardStr = face[number % 13] + " of " + suit[number / 13];
  // If cardStr in list generate new card 
  return cardStr; 
}

// Calculate the value of the card and lets the player choose if ace should be 1 or 11
public int cardValue(int value){
  if (value == 1){
  println("Would you like the value to be 1 or 11? Press a for 1 b for 11");
    if (keyPressed){
      if (key == 'a' || key == 'A'){
        value = 1;
    } if (key == 'b' || key == 'B'){
        value = 11;
    }   
  }
}
 
return value;
}

// Create card based on card name from "/resources/Cards"
void createCard(String card, char pos){
  imageMode(CENTER);
  cardImg = loadImage("../resources/Cards/" + card + ".gif");
  // Check if card should be created at player (p) or dealer (d) position on the table.
  if (pos == 'p'){
    image(cardImg, width / 2 + (15 * playerCards), height / 1.2 + (3.5 * playerCards));
    playerCards++;
  }
  else if (pos == 'd'){
    image(cardImg, width / 2 + (15 * dealerCards), height / 7 + (15 * dealerCards));
    dealerCards++;
  }
}
