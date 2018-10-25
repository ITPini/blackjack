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
  
println(face[12] + " of " + suit[1]);
println(generate_card_string());
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
  create_card("Ace of Clubs");
}

//Creates card based on card name from "/resources/Cards"
void create_card(String _card){
  imageMode(CENTER);
  cardImg = loadImage("../resources/Cards/" + _card + ".gif");
  image(cardImg, 0, 200);
}

// Generates card string
 void generate_card_string(){
   String suit_rand = (int)random(suit.length); return;
   //float face = floor(random(0, 13));
   //value = generate_card_value();
   
   //str = suit + " of " + value
 }
/*





/* Generates a card suit
void generate_card_suit(int suit){
   when hit button clicked{
  suit(random(1, 4))
  if 1 suit = "hearts"
  if 2 suit = "diamonds"
  if 3 suit = "clubs"
  if 4 suit = "spades"
  
  }
  
  // Generate card value
  void generate_card_value(int value){
    value(random(1, 13)
    if 1 value = "Ace"
    if 2 value = "Two"
    if 3 value = "Three"
    if 4 value = "Four"
    if 5 value = "Five"
    if 6 value = "Six"
    if 7 value = "Seven"
    if 8 value = "Eight"
    if 9 value = "Nine"
    if 10 value = "Ten"
    if 11 value = "Jack"
    if 12 value = "Queen"
    if 13 value = "King"
    
    
  }
  
  
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
