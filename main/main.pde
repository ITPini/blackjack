/* 
Made by Nicolai and Marcelino
Og vi har kinda en fejl eller noget. værdien vises rigtigt i println men basser ikke med tallet mellem 0-52
2d1
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
