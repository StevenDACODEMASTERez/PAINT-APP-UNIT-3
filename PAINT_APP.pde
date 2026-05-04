//Paint app
color grey = #BCBCBC;
color neonblue = #AB12FF;
color turquoise = #229392;
color lightpink = #FFD6F5;
color darkbrown = #553604;
color mint = #BFFFD1;
color taro = #DE92FA;
float sliderY, shade;
float thickness;
PImage FLAMINGO, MONKEY;
boolean FLAMINGON, MONKEYE;
float SliderY;
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
  background(255);
  image(FLAMINGO, 50, 50, 100, 100);
  image(MONKEY, 250, 50, 100, 100);
  line(50, 250, 50, 500);
  circle(50, sliderY, 20);
  fill(0);
  text("thickness: " +int(thickness),320, 30);
 // if (mousePressed && mouseY > 50) {
    stroke(0);
    //strokeWeight(thickness);
    //line(pmouseX, pmouseY, mouseX, mouseY);
  }
//}
void mouseDragged() {
  //controlSlider();
  if (FLAMINGON == false) {
    if (MONKEYE == false) {
      strokeWeight(5);
      stroke(0);
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else {
      noStroke();
      image(MONKEY, mouseX, mouseY, 100, 100);
     // stroke(160);
     // rect(245, 45, 110, 110);
//noStroke();
      //line(pmouseX, pmouseY, mouseX, mouseY);
    }
  } else {
    noStroke();
    image(FLAMINGO, mouseX, mouseY, 100, 100);
    //stroke(160);
    //rect(45, 45, 110, 110);
    //noStroke();
   /// line(pmouseX, pmouseY, mouseX, mouseY);
    //if (mouseY < 50 && mouseX > 50 &&mouseX < 300) {
    }
  }
//}

void mouseReleased() {
  //controlSlider();
  if (mouseX > 50 && mouseX < 150 && mouseY > 50 && mouseY > 0 && mouseY < 150) {
    FLAMINGON = !FLAMINGON;
    image(FLAMINGO, mouseX, mouseY, 100, 100);
  }
  if (mouseX > 250 && mouseX < 350 && mouseY > 50 && mouseY < 150) {
    MONKEYE = !MONKEYE;
    image(MONKEY, mouseX, mouseY, 100, 100);
  }
}
void tactile(int x, int y, int w, int h) {
  if// (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
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
