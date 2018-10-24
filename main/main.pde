int player_score;
int house_score;
int count;
int house_count;
int player_count;

int test = 50;

void setup(){
  size(1000, 600);
  background(0, 255, 0);
  create_card(test);
}

//Creates card based on card value.
void create_card(int c){
  rectMode(CENTER);
  strokeWeight(2);
  rect(width/2,height/2+c,width/2,height/2);
}
