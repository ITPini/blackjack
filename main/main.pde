/* 
Made by Nicolai and Marcelino
2d1

TODO:
- Draw funtionen virker ikke 100%, den viser ikke at den er draw
- Bug when both player and dealer has 21 points
- Maybe add sound when drawing card?
- Score that tracks wins
- Hide dealers card and reveal them at the end P
- Show points for player and dealer at the end
*/

import java.util.Collections;

int dealerPoints;
int playerPoints;
int houseCount;
int playerCount;

void setup(){
  size(1000, 600);

  // Load casino table
  background(0, 153, 0);
  loadCardPlaceholder();  
  loadStandButton();
  loadHitButton();
  loadResetButton();
  loadText();
  loadCardStack();
  
  // Load starting cards for player and dealer
  loadDealerCard(getCardNumber());
  loadDealerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
}

void draw(){

}
