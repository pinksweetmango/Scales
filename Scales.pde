
void setup(){
size(400, 400);
int diam = 0;
float r = 0;
noFill();
while(diam < 600){
  stroke(0,r,r+30);
  ellipse(200,200,diam,diam);
  diam++;
  r+=255/700.0;
}
}


void draw() {
for( int v = 0; v < 400; v+=10)
    for ( int u = 0; u < 400; u+=10)
      dots (u,v);
  for( int y = 0; y < 400; y+=60)
    for ( int x = 0; x < 500; x+=80)
      scales (x,y);
}



void scales (int x, int y) {
stroke(99, 173, 148);
fill(158-(int)(Math.random()*50), 222-(int)(Math.random()*50), 208-(int)(Math.random()*50));
triangle(x, y, x+40, 70+y, x+80, 0+y);
stroke(99, 136, 173);
int diam = 0;
float r = 255;
noFill();
while(diam < 20){
  stroke(0,r+70-(int)(Math.random()*10),r);
  ellipse(x+40,y+15,diam,diam);
  diam++;
  r-=255/30.0;
}

int diam2 = 0;
float r2 = 255;
noFill();
while(diam2 < 20){
  stroke(0,r2,r2);
  triangle(x+diam2, y+0, x+40, y+(70-diam2), x+(80-diam2), y);
  diam2++;
  r2-=255/30.0;
}

fill(158, 203, 222);
beginShape();
vertex(x+15, y+20);
vertex(x+40, y+60);
vertex(x+65, y+20);
vertex(x+40, y+40-(int)(Math.random()*9));
endShape(CLOSE);
fill(148, 209, 209);
beginShape();
vertex(x+15, y+20);
vertex(x+40, y+50);
vertex(x+65, y+20);
vertex(x+40, y+40);
endShape(CLOSE);
fill(148, 209, 209);
ellipse(x,y+30,15,30-(int)(Math.random()*50));
fill(158, 203, 222);
ellipse(x,y+45,25,25);
int diam7 = 0;
float r7 = 255;
noFill();
while(diam7 < 15){
  stroke(0,r7+70,r7+70);
  ellipse(x,y+45,diam7,diam7);
  diam7++;
  r7-=255/15.0;
}
}
void dots (int u, int v) {
int diam7 = 0;
float r7 = 255;
noFill();
while(diam7 < 20){
  stroke(0,r7+10+(int)(Math.random()*100),r7+20+(int)(Math.random()*50));
  ellipse(u+10,v+10,diam7,diam7);
  diam7++;
  r7-=255/20.0;
}
}


