float keyAngle;
float branches;
float num;

void setup() {
  size(800, 800);
  background(0);
  stroke(255);
}

void draw() {
  background(25);
  num = 0;
  drawTree(width/2, height, 200, keyAngle/20);
  
  if (keyCode == RIGHT) { // Så den kan dreg til højre
    keyAngle ++;
  }
  if (keyCode == LEFT) { //Så den kan dreg til venstre
    keyAngle --;
  }
  branches++;
}

void drawTree(float x, float y, float l, float v) {
  PVector branch = new PVector(0, -l); // laver en PVecter
  branch.rotate(radians(v)); //rotere grene ift. v
  line(x, y, x + branch.x, y + branch.y); // bruger PVectoren, samt x og y værdi som vi skrive på linje 15
  
  if (l > 10) {
    if (num <= branches) {
      num ++;
      drawTree(x + branch.x, y + branch.y, l * 0.7, v - 25 + (keyAngle/10));

      if (num <= branches) {
        num ++;
        drawTree(x + branch.x, y + branch.y, l * 0.7, v + 25 + (keyAngle/10));
      }
    }
  }
}
