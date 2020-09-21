int startX = 400;
int startY = 400;
int endX = 200;
int endY = 400;
void setup() {
 size(500,500);
 background(0,0,0);
 frameRate(60);
}

void draw() {
 stroke((int)(Math.random()*500), (int)(Math.random()*500),(int)(Math.random()*500));
 strokeWeight((int)(Math.random()*100));
 while (endX < 500) {
   endX = startX + (int)(Math.random()*1000);
   endY = startY + (int)(Math.random()*1000-500);
  line(startX,startY,endX,endY);
  startX = endY;
  startY = endY; 
 }
}
void mousePressed() {
  startX = (int)(Math.random()*500);
  startY = (int)(Math.random()*500);
  endX = (int)(Math.random()*500);
  endY = (int)(Math.random()*500);
}
