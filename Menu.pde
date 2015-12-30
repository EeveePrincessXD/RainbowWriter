class Menu{

void drawMenu() {
  //draw rectangle containing significant buttons
  fill(255);
  stroke(0);
  strokeWeight(2);
  rect(10, 10, width - 20, 75, 7);
  
  //draw buttons
  rect(width - 75, 20, 50, 50, 7);  //save button
  rect(width - 130, 20, 50, 50, 7);  //clear button
  
  //change fill color & display in elllipse to avoid guesswork for user
  fill(red, green, blue, alpha);
  stroke(0);    //outline for sample ellipse (makes it still visible when using white)
  strokeWeight(2);
  ellipse(20, 20, 50, 50);  //ellipse displays the color you're using
  
  //set up button labels
  fill(0);
  textSize(14);
  text("<- Color", 75, 40);  //label for color sample ellipse
  text("Alpha: " + alpha, 75, 52);  //label for alpha level
  text("Stroke Weight: " + weight, 75, 64);  //label for stroke weight
  text("Save", width - 65, 50);  //label for save button
  text("Clear", width - 123, 50);  //label for clear button
  }

}
