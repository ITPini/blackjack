/* 
For at tælle point skal vi lave et whileloop og statementen for whileloopet
bliver false når runden er slut.
Også køre point tælleren bare i ring og adder den nye carval til en variabel som printes på skærmen
hver gang et nyt kort bliver trukket.
Så lad os lige finde ud af hvordan man gør dette eller om der er en bedere måde at tælle point på.
Også skal vi lige tage at få noget mere orden på alt det her shit.
Made by Nicolai and Marcelino
Og vi har kinda en fejl eller noget. værdien vises rigtigt i println men basser ikke med tallet mellem 0-52
2d1
*/
import java.util.Collections;

int playerScore;
int houseScore;
int count;
int houseCount;
int playerCount;

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
  
  loadPlayerCard(getCardNumber());
  loadPlayerCard(getCardNumber());
  
  loadStandButton();
  loadHitButton();
  loadText();
  loadCardStack();
  displayPoints();
  
  // Load starting cards
  //loadDealerCard(getCardNumber());
}

void draw(){
  if (playerPoints > 21){
    resetTable();
    doubleCheck.clear();
  }
  else if (playerPoints == 21){
   rectMode(CENTER);
   // Clears points
   noStroke();
   fill(0,153,0);
   rect(width / 2, height / 2, 200, 100);
   fill(255);
   text("You win!", width / 2, height / 2);
  }
  else if (dealerPoints > 16){
    resetTable();
    doubleCheck.clear();
  }
  
  
  //println(mouseX + " : " + mouseY);
  //loadPlayerCard(getCardNumber());
  //loadDealerCard(getCardNumber());
}
