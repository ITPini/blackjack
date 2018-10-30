// Generate a card based on a number between 0-52
public int getCardNumber(){
  // When "Hit" button clicked
  int intRand = int(random(suit.length * face.length));
  doubleCheck.add(intRand);
  return intRand;
}


// Creates a string for a card used to load the .gif files
public String getCardName(int number){
  String cardStr = face[number%13] + " of " + suit[number/13];
  // If cardStr in list generate new card 
  return cardStr; 
}


// Calculates the value of the card and lets the player choose if ace should be 1 or 11
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


//Creates card based on card name from "/resources/Cards"
void createCard(String card, char pos){
  imageMode(CENTER);
  cardImg = loadImage("../resources/Cards/" + card + ".gif");
  //Check if card should be created at player (p) or dealer (d) position on the table.
  if (pos == 'p'){
    image(cardImg, 0, 200);
  }
  else if (pos == 'd'){
    image(cardImg, 0, -200);
  }
}
