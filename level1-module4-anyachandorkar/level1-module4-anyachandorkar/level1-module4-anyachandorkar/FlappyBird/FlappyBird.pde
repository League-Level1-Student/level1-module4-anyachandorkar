float x=30;
float y=40;
float velocity = 0;
float gravity = 0.25;
float upperPipeHeight = random (100,300);
float pipex = 170;
int frame = 0;
int score = 0;
void draw(){
  velocity = velocity + gravity;
  y= y + velocity;
  background(6,78,113); 
  fill(203,97,43);
  ellipse(x,y,35,30);
  fill(178,176,176);
  rect(0,550,700,50);
teleportPipes();
if(x>pipex+130){
  score=score+1;}
  text(score,300,100);
}


void setup(){
  size(600,600);
 
}

void mousePressed(){
  velocity=-6;
  
}

void teleportPipes(){

 fill(43,178,14);
rect(pipex,0,130,upperPipeHeight);
fill(43,178,14);
rect(pipex,380,130,245); 
  pipex=pipex-1;
  if(pipex<-120){
    upperPipeHeight = random (225,275);
    pipex=600;
   pipex= pipex-1;}
   
   if(intersectsPipes()){
     text("GAME ENDED",300,300);
     frame++;
     if(frame>25){
     exit();
     }
   }
   if(hitGround()){
     text("GAME ENDED",300,300);
     frame++;
     if(frame>100){
     exit();
   }}
}

boolean intersectsPipes() { 
     if (y < upperPipeHeight && x > pipex){
          return true; }
     else if (y>380 && x > pipex && x < (pipex+130)) {
          return true; }
       
     else { return false; }
}
boolean hitGround(){
  if(y>550){
    return true;
  }
  else {return false;}
}