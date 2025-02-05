
// color palette ===========================
color red = #F56991;
color pink = #EED3D9;
color blue = #008DDA;
color turq = #97E7E1;
color gold = #FFC94A;
color yellow = #EFFAB4;
color navy = #001d3d;
color green = #097969;
color skyblue = #87CEEB;
// shades ==================================
color white = #FFFFFF;
color black = #000000;
color lightgrey  = #B5C0D0;
color darkGrey  = #222222;
color grey  = #3b3b3b;
color moongrey = #94908D;

void setup() {

  size(800, 800);
}

void draw() {
  background(black);

  ground(0, 300);

  road(0, 600);

  house(100, 150, 1);
  lightpole(1,1);

}

void ground (int x, int y) {
  noStroke();
  fill(green);
  rect(0, 300, 800, 800);
}

void road(int x, int y) {
  noStroke();
  fill(grey);
  rect(0, 600, 800, 600);

  stroke(yellow);
  strokeWeight(10);
  line(100, 700, 200, 700);
  line(300, 700, 400, 700);
  line(600, 700, 500, 700);
  line(700, 700, 800, 700);
}
void house (int x, int y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  houseBody();
  window();
  door();
  roof();
  popMatrix();
}

void houseBody() {

  stroke(lightgrey);
  fill(lightgrey);
  square(0,0, 250);
}
void window() {

  fill(yellow);
  square(125, 75, 125);
}
void door () {
  noStroke();
  fill(grey);
  rect(10, 80, 100, 175);
  fill(yellow);
  circle(90, 175, 10);
}
void roof () {

  noStroke();
  fill(darkGrey);
  triangle(50, 375, 250, 375, 250, 250);
  fill(grey);
  triangle(250, 375, 250, 250, 450, 375);
}

void lightpole(int x, int y){
light();
pole();



}
void light(){
  
  fill(yellow, 30);
  circle(600, 260, 100);
  fill(yellow, 76);
  circle(600, 260, 50);
  fill(yellow, 80);
  circle(600, 260, 40);
  fill(yellow, 90);
  circle(600, 260, 30);
  fill(yellow, 95);
  circle(600, 260, 20);
  fill(yellow, 100);
  circle(600, 260, 10);
}
void pole(){
 
  fill(lightgrey);
  rect(700, 200, 10, 400);
  rect(600, 200, 100, 10);
  triangle(600, 200, 575, 250, 625, 250);


}
