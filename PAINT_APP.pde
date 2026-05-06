//Paint app
color grey = #BCBCBC;
color neonblue = #AB12FF;
color turquoise = #229392;
color lightpink = #FFD6F5;
color darkbrown = #553604;
color mint = #BFFFD1;
color taro = #DE92FA;
float sliderY, shade;
PImage FLAMINGO, MONKEY;
boolean FLAMINGON, MONKEYE;
float SliderY;
boolean draggingSlider = false;
void setup () {
  size(600, 600);
  background(255);
  strokeWeight(5);
  stroke(grey);
  FLAMINGON = false;
  FLAMINGO = loadImage("FLAMINGO.jpg");
  MONKEYE = false;
  MONKEY = loadImage("MONKEY.jpg");
  sliderY = 400;
}

void draw() {
  stroke(0);
  strokeWeight(1);
  fill(#00AEE0);
  rect(0, 0, width, 200);
  if (FLAMINGON) {
    stroke(160);
    rect(45, 45, 110, 110);
    noStroke();
  }
  image(FLAMINGO, 50, 50, 100, 100);
  image(MONKEY, 250, 50, 100, 100);
  //fill(0);
  // if (mousePressed && mouseY > 50) {
  stroke(0);
  line(550, 100, 550, 500);
  fill(100);
  circle(550, sliderY, 20);
  stroke(0);
  strokeWeight(map(sliderY, 100, 500, 1, 20));
  line(520, 520, 580, 520);
}

void mouseDragged() {
  println(FLAMINGON, MONKEYE);
  if (mouseX > 530 && mouseX < 570) {
    sliderY = mouseY;
    sliderY = constrain(sliderY, 100, 500);
  } else if (FLAMINGON == true) {
    noStroke();
    image(FLAMINGO, mouseX, mouseY, 100, 100);
  } else if (MONKEYE == true) {
    noStroke();
    image(MONKEY, mouseX, mouseY, 100, 100);
    stroke(160);
    rect(245, 45, 110, 110);
    noStroke();
  } else {
    fill(#ADABAB);
    noStroke();
    rect(400, 0, 200, 600);
    stroke(0);
    fill(255);
    strokeWeight(map(sliderY, 100, 500, 1, 20));
    stroke(0);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}










void mouseReleased() {
  //controlSlider();
  if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY < 150) {
    FLAMINGON = !FLAMINGON;
    MONKEYE = false;
    image(FLAMINGO, mouseX, mouseY, 100, 100);
  }
  if (mouseX > 250 && mouseX < 350 && mouseY > 50 && mouseY < 150) {
    MONKEYE = !MONKEYE;
    FLAMINGON = false;
    image(MONKEY, mouseX, mouseY, 100, 100);
  }
}
void mousePressed() {
  if (dist(mouseX, mouseY, 550, sliderY) < 20) {
    draggingSlider = true;
  }
}



//void tactile(int x, int y, int w, int h) {
//if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
//fill(255, 255, 0);
//} else {
//fill(255);
// }
//}

//void showOnOff() {
//}

//void controlSlider() {
//if (mouseY > 250 && mouseY < 500 && mouseX > 25 && mouseX < 75) {
//noStroke();
//sliderY = mouseY;
//thickness = map(sliderY, 250, 500, 67, 1);
//strokeWeight(thickness);
// stroke(0);
// }
//}
