/* 
Made by Nicolai and Marcelino
2d1
*/
int player_score;
int house_score;
int count;
int house_count;
int player_count;

PImage cardImg;
PImage cardBackImg;

String[] suit = {"Clubs", "Diamonds", "Hearts", "Spades"};
String[] face = {"Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"};

void setup(){
  size(1000, 600);

/* Test
   int suit_rand = int(random(suit.length));
   println(suit[suit_rand]);
   println(face[12] + " of " + suit[1]);
   println(generate_card_string());
*/
  //Loads casino table
  background(0, 153, 0);
  translate(width / 2, height / 2);
  
  //Loads card placeholder
  fill(0, 140, 0);
  stroke(255);
  strokeWeight(4);
  rect(-38, 150, 76, 100, 5);
  rect(width / 3 - 2, -height / 3 - 2, 76, 100, 5);
  
  //Loads dealer rule
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text("Dealer draws on 16 or less", 0, -100);
  
  //Loads card stack
  cardBackImg = loadImage("../resources/Cards/Card Back.gif");
  for (int i = 0; i <= 10; i += 2){
    image(cardBackImg, width / 3 + i, -height / 3 + i);
  }
}

void draw(){
  translate(width / 2, height / 2);
  create_card(generate_card_string());
  noLoop();
}

//Creates card based on card name from "/resources/Cards"
void create_card(String _card){
  imageMode(CENTER);
  cardImg = loadImage("../resources/Cards/" + _card + ".gif");
  image(cardImg, 0, 200);
}

 //Generates a random string representing a card
 public String generate_card_string(){
   // When "Hit" button clicked
   int suit_rand = int(random(suit.length));
   int face_rand = int(random(face.length));
   String card_str = face[face_rand] + " of " + suit[suit_rand];
   // If card_str in list generate new card
   String[] check_double = {};
   return card_str;
 }
 
 
   
 //}
/*

  void score_card_value(){
  value(random(1, 13))
  if value = 1{
    choose if value = 1 or 11
  }
  else if value >1 && value < 11
  value == value
  }
  else if if value >10 && value < 14
  value == 10
  
}
*/
