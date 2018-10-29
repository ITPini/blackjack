void loadCard(){
  int cardNumber = getCardNumber();
  createCard(getCardName(cardNumber), 'p'); //Player position
  createCard(getCardName(cardNumber), 'd'); //Dealer position
  println(cardNumber);
  println(cardValue(value[cardNumber%13]));
  //To get a specific object of the collection >>> doubleCheck.get(x);
  println(doubleCheck); //Print double check list
}

void loadDealerRule(){
   fill(255);
  textSize(32);
  textAlign(CENTER);
  text("Dealer draws on 16 or less", 0, height / -10);
}

void loadHitButton(){
  fill(0, 255, 0);
  stroke(255);
  strokeWeight(2);
  ellipse(hitXY[0], hitXY[1], hitXY[2], hitXY[3]);
}
void loadCardStack(){
  cardbackImg = loadImage("../resources/Cards/Card Back.gif");
  for (int i = 0; i <= 10; i += 2){
    image(cardbackImg, width / 3 + i, height / -3 + i);
}
}

void loadCardPlaceholder(){
   fill(0, 100, 0);
  stroke(255);
  strokeWeight(4);
  rect(-38, 150, 76, 100, 5);
  rect(width / 3 - 2, height / -3 - 2, 76, 100, 5);
}
