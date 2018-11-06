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
- Remove code that is useless and add more comments N
*/

import java.util.Collections;

int dealerPoints;
int playerPoints;
int houseCount;
int playerCount;
boolean gameActive = true;

PImage cardImg;
PImage cardbackImg;

// Arrays for determening the card you draw and based on the strings combined the card can be displayed on screen
String[] suit = {"Clubs", "Diamonds", "Hearts", "Spades"};
String[] face = {"Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"};

// Array that holds the value of each card except ace wich can also be 1
int[] value = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10};

// Arraylist for make sure that you cannot draw the same card twice in a game
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
  
  // Load starting cards for player and dealer
  loadDealerCard(getCardNumber());
  loadDealerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
}

void draw(){

}
