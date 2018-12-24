//golden ratio test
float goldRatio;
float incr;
float radius;
float theta;
float angleIncr;
float fibC;
float fibB;
float fibA;
int greyVal;
float fade;
int rVal,gVal,bVal;

void setup(){
  size(1000,1000);
  background(0);
  rectMode(RADIUS);
  //noFill();
  fill(255);
  noStroke();
  //stroke(255);
  //strokeWeight(3);
  fibA=0;
  fibB=1;
  fibC=0;
  incr=.1;
  radius=.1;
  theta=0;
  goldRatio=1.618034;
  greyVal=255;
  fade=80;
  gVal=greyVal;
  bVal=greyVal;
}

void draw(){
  fill(0,fade/2);
rect(0,0,width,height);
while (radius<=(abs(mouseX-(width/2))/1)) {  
//fibC=fibA+fibB;
//goldRatio=fibC/fibB;
  pushMatrix();
  translate(width/2,height/2);
  rotate(theta);
  // greyVal=map(theta,0,TWO_PI,0,255);
  rVal=int(map(radius,0,mouseY/2,100,255));
  gVal=int(map(radius,0,mouseX/2,0,220));
  bVal=int(map(radius,0,width/3,100,170));
  fill(rVal,gVal,bVal,fade*2); 
ellipse(radius,radius,4,4);
  popMatrix();
radius+=incr;
theta+=goldRatio;
theta=theta%TWO_PI;
//delay(10);
//fibA=fibB;
//fibB=fibC;
//println(goldRatio);
  }//end while
   // background(0,10);
 //println("FINISH"); 
radius=.1;
theta+=(.000000*(mouseY-(height/2)));
//theta=0;
//theta=map(mouseY,0,height,0,1);

if (key == 's'){
saveFrame("render/mandala_########"); 
}
else{
;
}
}

void mousePressed(){
//theta=0;

}

void keyPressed(){

}

