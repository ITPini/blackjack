void loadCard(){
  int cardNumber = getCardNumber();
  createCard(getCardName(cardNumber), 'p'); //Player position
  createCard(getCardName(cardNumber), 'd'); //Dealer position
  println(cardNumber);
  println(cardValue(value[cardNumber%13]));
  //To get a specific object of the collection >>> doubleCheck.get(x);
  //println(doubleCheck); //Print double check list
}

void loadDealerRule(){
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text("Dealer draws on 16 or less", width / 2, height / 2.5);
}

void loadHitButton(){
  fill(0, 255, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(width / 1.5, height / 1.2, 75, 75);
}

void loadCardStack(){
  imageMode(CENTER);
  cardbackImg = loadImage("../resources/Cards/Card Back.gif");
  for (int i = 0; i <= 10; i += 2){
    image(cardbackImg, width / 1.2 + i, height / 7 + i);
  }
}

void loadCardPlaceholder(){
  fill(0, 100, 0);
  stroke(255);
  strokeWeight(4);
  rectMode(CENTER);
  rect(width / 2, height / 1.2, 76, -100, 5); //Placeholder for player
  rect(width / 2, height / 7, 76, 100, 5); //Placeholder for dealer
  rect(width / 1.2, height / 7, 76, 100, 5); //Placeholder for cardstack
}
/*
void mousePressed(){
  rect(hitXY[0], hitXY[1], hitXY[2], hitXY[3]);
  if (mouseY < (hitXY[1] + hitXY[3]) && mouseY > hitXY[1]){
    if (mouseX < (hitXY[0] + hitXY[2]) && mouseX > hitXY[0]){
    println("hello");
    }
  }
}
*/
