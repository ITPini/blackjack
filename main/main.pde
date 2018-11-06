/* 
Made by Nicolai and Marcelino
2d1

TODO:
- Bug when both player and dealer has 21 points
- Maybe add sound when drawing card?
- Score that tracks wins
- Make ace either 1 or 11 N
- Hide dealers card and reveal them at the end P
- Show points for player and dealer at the end
- Remove code that is useless and add more comments N
*/

import java.util.Collections;

int dealerPoints;
int playerPoints;
int count;
int houseCount;
int playerCount;
boolean gameActive = true;
boolean standButtonHit = false;

PImage cardImg;
PImage cardbackImg;

String[] suit = {"Clubs", "Diamonds", "Hearts", "Spades"};
String[] face = {"Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"};
int[] value = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10};
ArrayList<Integer> doubleCheck = new ArrayList();

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
  
  // Load starting cards
  loadDealerCard(getCardNumber());
  loadDealerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
  }

void draw(){
  /*
  while (gameActive == true){
    println("Test");
  }
    if (standButtonHit == false){
      displayPlayerPoints();
    }
    else if (standButtonHit == true);{
      dealerRule();
      displayDealerPoints();
    }
    if (playerPoints > 21 || dealerPoints > 21 || standButtonHit == true && dealerPoints < 16){
       gameActive = false;
    }
  }
  if (gameActive == false){
   whoWon();
  }*/
}
