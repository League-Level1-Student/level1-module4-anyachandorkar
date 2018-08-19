float x=30;
float y=40;
float velocity = 0;
float gravity = 0.25;
float pipex = 170;
float upperPipeHeight = random (0,45);
void draw(){
  velocity = velocity + gravity;
  y= y + velocity;
  background(6,78,113); 
  fill(203,97,43);
  ellipse(x,y,35,30);
teleportPipes();
}


void setup(){
  size(600,600);
 
}

void mousePressed(){
  velocity=-8;
  
}

void teleportPipes(){
 
 fill(43,178,14);
rect(pipex,0,130,230);
fill(43,178,14);
rect(pipex,380,130,245); 
  pipex=pipex-1;
  if(pipex<-120){
    pipex=610;
   pipex= pipex-1;
}}