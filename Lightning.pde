int startX = 0;
int startY = 0;
int endX = 300;
int endY = 300;
int y = 20;
float weight = 0.1;

void setup()
{
  size(300,300);
  background(255);
}
void draw()
{
  stroke((float)(Math.random()*32),(float)(Math.random()*32),(float)(Math.random()*256), 200);
  strokeWeight(weight);
  while((Math.abs(endX)<300) && (Math.abs(endY)<300)){
    endX += (int)(Math.random()*10-5);
    endY += (int)(Math.random()*10-5);
    endY = startY + (int)(Math.random()*5);
    line(startX, startY, endX, endY);
    startX = endX+5;
    startY = endY;
    weight += 0.05;
  }
}

void addRect(){
  stroke(194,178,128);
  fill(194,178,128);
  strokeWeight(10);
  rect(280,0,20,300);
}

void mousePressed()
{  
  startX = 0;
  startY = 0;
  endX = 0;
  endY = 0;
  background(255);
  addRect();
  draw();
  weight++;
}
