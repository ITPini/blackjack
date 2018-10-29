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

int[] hitXY = {width * 2, height * 2, 50, 50}; //Nigga why u even put dis shit in a array
String[] suit = {"Clubs", "Diamonds", "Hearts", "Spades"};
String[] face = {"Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"};
int[] value = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10};
int[] test = {};

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

  //Loads "Hit" button
  fill(0, 255, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(hitXY[0],hitXY[1],hitXY[2],hitXY[3]);
  }
}


void draw(){
  translate(width / 2, height / 2);
  int cardnumber = getcardnumber();
  create_card(getcardname(cardnumber));
  println(cardnumber);
  println(card_value(value[cardnumber%13]));
  //append(test, cardnumber);
  //printArray(test);
  noLoop();
}


//Creates card based on card name from "/resources/Cards"
void create_card(String _card){
  imageMode(CENTER);
  cardImg = loadImage("../resources/Cards/" + _card + ".gif");
  image(cardImg, 0, 200);
}
   
   
 //}
 public int getcardnumber(){
   // When "Hit" button clicked
   int int_rand = int(random(suit.length*face.length));
   //int[] check_double = {};
   //append(check_double, int_rand);
   //println(check_double[1]);
   return int_rand;
   }
   
   
   public String getcardname(int number){
    String card_str = face[number%13] + " of " + suit[number/13];
   // If card_str in list generate new card 
   return card_str; 
   }
 
 
  public int card_value(int value){
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
