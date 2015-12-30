//set up ints for fill color
int red = 0;    //red in RGB
int green = 0;  //green in RGB
int blue = 0;  //blue in RGB
int alpha = 255;  //alpha (transparency)
int weight = 2;  //used to change strokeWeight

Menu m = new Menu();  //set up menu

void setup() {
size(700,700);
strokeWeight(weight);
background(255);
ellipseMode(CORNER);    //used for color sample ellipse
}

void draw() {
  keyPressed();  //alter color
  if(mousePressed){
    if(mouseX >= width - 75 && mouseX <= width - 25 && mouseY >= 10 && mouseY <= 85)
    {
      save("drawing.png");  //save a copy of user's drawing
    } else if(mouseX >= width - 130 && mouseX <= width - 80 && mouseY >= 10 && mouseY <= 85) {
    background(255);  //clear the screen
    
    //return settings to default
    weight = 2;
    red = 0;
    green = 0;
    blue = 0;
    alpha = 255;
    }else line(pmouseX, pmouseY, mouseX, mouseY);  //draw lines on mouse click
  }
  m.drawMenu();
} 

//keyboard color changes
void keyPressed() {
  //alter fill color depending on key
    if (key == 'r') {    //typing R increases red value
      red += 10;
      if(red > 255) red = 255;
    } else if (key == 'g') {    //typing G increases green value
      green += 10;
      if(green > 255) green = 255;
    } else if (key == 'b') {    //typing B increases blue value
      blue += 10;
      if(blue > 255) blue = 255;
    } else if (key == 'e') {    //typing E decreases red value
      red -= 10;
      if(red < 0) red = 0;
    } else if (key == 'f') {    //typing F decreases green value
      green -= 10;
      if(green < 0) green = 0;
    } else if (key == 'v') {    //typing V decreases blue value
      blue -= 10;
      if(blue < 0) blue = 0;
    } else if (key == 'a') {    //typing A increases alpha value
      alpha += 10;
      if(alpha > 255) alpha = 255;
    } else if (key == 'd') {    //typing D decreases alpha value
      alpha -= 10;
      if(alpha < 0) alpha = 0;
    } else if(key == 'w') {    //typing W increases strokeWeight
      weight++;
    } else if(key == 's') {    //typing S decreases strokeWeight
      weight--;
      if(weight < 2) weight = 2;
    }
  
  //change stroke color and width
  stroke(red, green, blue, alpha);
  strokeWeight(weight);
  key = 'h';    //dummy value to stop changes
}
