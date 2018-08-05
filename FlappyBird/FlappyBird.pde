int x=10;
int y=40;
int birdYVelocity = 30;
int gravity = y++;
int r = 80;
void draw(){
  background(6,78,113); 
  fill(203,97,43);
  ellipse(x,y,35,30);
fill(43,178,14);
rect(r,0,130,230);
}


void setup(){
  size(600,600);
 
}

void mousePressed(){
  y-=birdYVelocity;
  
}

void teleportPipes(){
  
  
}