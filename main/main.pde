int player_score;
int house_score;
int count;
int house_count;
int player_count;

PImage img;

void setup(){
  size(1000, 600);
  
  //Loads casino table
  background(0, 153, 0);
  translate(width / 2, height / 2);
  //Loads player card placeholder
  fill(0, 140, 0);
  stroke(255);
  strokeWeight(4);
  rect(-38, 150, 76, 100, 5);
  //Loads dealer rule
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text("Dealer draws on 16 or less", 0, -100);
}

void draw(){
  translate(width / 2, height / 2);
  create_card("Ace of Clubs");
}

//Creates card based on card name from "/resources/Cards"
void create_card(String _card){
  imageMode(CENTER);
  img = loadImage("../resources/Cards/" + _card + ".gif");
  image(img, 0, 200); 
}
