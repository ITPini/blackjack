PImage cardImg;
PImage cardbackImg;

 // Used to calculate pixel offset of cards for player and dealer
float cardOffsetX = 15;
float cardOffsetY = 3.5;
int playerCards = 0;
int dealerCards = 0;

// Arraylist for make sure that you cannot draw the same card twice in a game
ArrayList<Integer> doubleCheck = new ArrayList();

// Arrays for determening the card you draw and based on the strings combined the card can be displayed on screen
String[] suit = {"Clubs", "Diamonds", "Hearts", "Spades"};
String[] face = {"Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"};

// Array that holds the value of each card except ace wich can also be 1
int[] value = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10};


// Generate a card based on a number between 0-52 and returns it
// The reason for this finction is that we have a number that we can use in different functions and make sure the card dosnt change
public int getCardNumber(){
  int intRand = int(random(suit.length * face.length)); //Generates the number between 0-52
  
  // Check if the card has already been drawn in this game
  for (int i = 0; i < doubleCheck.size(); i++){
    if (doubleCheck.get(i) == intRand){
      intRand = int(random(suit.length * face.length));
    }
  }
  // Adds the card to the doubleCheck collection/arraylist and then returns intRand
  doubleCheck.add(intRand);
  return intRand;
}


// Create and returns a string for a card used to load the .gif files
public String getCardName(int number){
  // first we use modolus 13 on the returned number from getCardNumber to determine the value of the card.
  // Then we divide the returned number with 13 to determine the suit of the card.
  // We then added the two indexes from the array to create a string used for displaying the card on the screen.
  String cardStr = face[number % 13] + " of " + suit[number / 13];             
  return cardStr; 
}


// If the card is an ace (1) this function determines if that cards value should be 1 or 11.
// The card is going to be 11 except if the player busts when the value is 11.
// Then retruns the value, if the card is not an ace (1) value = value is returned.
public int cardValue(int value){
if (value == 1){
  if (playerPoints + 11 <= 21){
    value = 11;
    }
  }
  return value;
}


// Create a card based on card string from "/resources/Cards"
// Takes arguments as card string from getCardName() and a char as position
void createCard(String card, char pos){
  imageMode(CENTER);
  cardImg = loadImage("../resources/Cards/" + card + ".gif");
  
  // Check if card should be created at player (p) or dealer (d) position on the table.
  // Places the next card by small pixel offsets
  if (pos == 'p'){
    image(cardImg, width / 2 + (cardOffsetX * playerCards), height / 1.2 + (cardOffsetY * playerCards));
    playerCards++;
    }
  else if (pos == 'd'){
    image(cardImg, width / 2 + (cardOffsetX * dealerCards), height / 7 + (cardOffsetY * dealerCards));
    dealerCards++;
  }
}
