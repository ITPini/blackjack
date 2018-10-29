/* 
Made by Nicolai and Marcelino
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

int[] hitXY = {width * 2, height * 2, 50, 50}; //Nigga why u even put dis shit in a array <<< til hitboxen af knappen

String[] suit = {"Clubs", "Diamonds", "Hearts", "Spades"};
String[] face = {"Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"};
int[] value = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10};
ArrayList doubleCheck = new ArrayList();

int[] test = {};

void setup(){
  //fullScreen();
  size(1000, 600);

/* Test
   int suit_rand = int(random(suit.length));
   println(suit[suit_rand]);
   println(face[12] + " of " + suit[1]);
   println(generate_cardString());
*/

  //Loads casino table
  translate(width / 2, height / 2);
  background(0, 153, 0);

  //Loads card placeholder
  fill(0, 100, 0);
  stroke(255);
  strokeWeight(4);
  rect(-38, 150, 76, 100, 5);
  rect(width / 3 - 2, height / -3 - 2, 76, 100, 5);

  //Loads dealer rule
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text("Dealer draws on 16 or less", 0, height / -10);

  //Loads card stack
  cardbackImg = loadImage("../resources/Cards/Card Back.gif");
  for (int i = 0; i <= 10; i += 2){
    image(cardbackImg, width / 3 + i, height / -3 + i);
  }

  //Loads "Hit" button
  fill(0, 255, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(hitXY[0], hitXY[1], hitXY[2], hitXY[3]);
  
  //Loads card
  int cardNumber = getCardNumber();
  createCard(getCardName(cardNumber), 'p'); //Player position
  createCard(getCardName(cardNumber), 'd'); //Dealer position
  println(cardNumber);
  println(cardValue(value[cardNumber%13]));
  //To get a specific object of the collection >>> doubleCheck.get(x);
  println(doubleCheck); //Print double check list
}

void draw(){
  translate(width / 2, height / 2);
  noLoop();
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

public int getCardNumber(){
  // When "Hit" button clicked
  int intRand = int(random(suit.length * face.length));
  doubleCheck.add(intRand);
  return intRand;
}

public String getCardName(int number){
  String cardStr = face[number%13] + " of " + suit[number/13];
  // If cardStr in list generate new card 
  return cardStr; 
}
 
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

/*
public int playerScore(){
  
}
*/
