int playerCards = 0; // Used to calculate pixel offset of cards for player
int dealerCards = 0; // Used to calculate pixel offset of cards for dealer


// Generate a card based on a number between 0-52 and returns it
// The reson for this finction is that we have a number that we can use in different functions and make sure the card dosnt change
public int getCardNumber(){
  int intRand = int(random(suit.length * face.length));        //Generates the number between 0-52
  
  // Check if the card has already ben drawn in this game
  for (int i = 0; i < doubleCheck.size(); i++){
    if (doubleCheck.get(i) == intRand){
      intRand = int(random(suit.length * face.length));
    }
  }
  // Adds the card to the doublecheck collection/arraylist and then returns it
  doubleCheck.add(intRand);
  return intRand;
}


// Create and returns a string for a card used to load the .gif files
public String getCardName(int number){
  // first we use modolus 13 on the returned number from getCardNumber to determine the value of the card
  // Then we divide the returned number with 13 to determine the suit of the card.
  // We then adde the two indxes from the array to create a string used for displaying the card on the screen
  String cardStr = face[number % 13] + " of " + suit[number / 13];
                             
  return cardStr; 
}


// If the card is an ace (1) this function determines if that cards value should be 1 or 11
// The card is going to be 11 except if the player busts when the value is 11
// Then retruns the value, if the card is not an ace (1) value = value is returned
public int cardValue(int value){
if (value == 1){
  if (playerPoints + 11 <= 21){
    value = 11;
    }
  }
  return value;
}


// Create card based on card name from "/resources/Cards"
// DIS ONE PINI MUST EXPLAIN BECAUSE I DO not WANT 2
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
