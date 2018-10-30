/* 
For at tælle point skal vi lave et whileloop og statementen for whileloopet
bliver false når runden er slut.
Også køre point tælleren bare i ring og adder den nye carval til en variabel som printes på skærmen
hver gang et nyt kort bliver trukket.
Så lad os lige finde ud af hvordan man gør dette eller om der er en bedere måde at tælle point på.
Også skal vi lige tage at få noget mere orden på alt det her shit.
Der skal også lave en cardplaceholder for dealer.
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

int[] hitXY = {width * 2, height * 2, 50, 50}; //til hitboxen af knappen og selve grafikken

String[] suit = {"Clubs", "Diamonds", "Hearts", "Spades"};
String[] face = {"Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"};
int[] value = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10};
ArrayList doubleCheck = new ArrayList();

int[] test = {};

void setup(){
  //fullScreen();
  size(1000, 600);
  
  //Loads casino table
  translate(width / 2, height / 2);
  background(0, 153, 0);

 loadCardPlaceholder();
 loadDealerRule();
 loadHitButton();
 
  //Loads card stack
  cardbackImg = loadImage("../resources/Cards/Card Back.gif");
  for (int i = 0; i <= 10; i += 2){
    image(cardbackImg, width / 3 + i, height / -3 + i);
  }
  loadCard();
}

void draw(){
  //println(mouseX + " : " + mouseY);
  //mousePressed();
  //translate(width / 2, height / 2);
  
}

/*
//Check if mouse has pressed any button
void mouseClicked(){
  if (mouseButton == LEFT){
  rectMode(CENTER);
  rect(hitXY[0],hitXY[1],hitXY[2],hitXY[3]);
  if (mouseX > hitXY[0] && mouseX < (hitXY[0] + hitXY[2]) && mouseY > hitXY[1] && mouseY < (hitXY[1] + hitXY[3])){
     println("hey");
     //noLoop();
  }
  }
}
*/


/*
public int playerScore(int cardval){
  
}
*/

//public checkDouble(int cardval){
  
//}
