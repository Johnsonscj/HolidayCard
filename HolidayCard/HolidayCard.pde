Snow[] s = new Snow[500];
boolean addWind= false;
boolean stop=false;
boolean re =false;
float x=0;
   float y=0;

void setup(){
  
  size(1000,1000);
  for(int i =0; i<s.length; i++){
   s[i]= new SnowFlake(); 
  }
  
  
  
}
void draw(){
 noStroke();
 background(0);
 fill(0,0,0);
 
 
 if(stop){
  pileUp(); 
 }


 for(int i=0; i<s.length; i++){
  s[i].move();
  s[i].show();
  if(s[i].getSpeed()>10){
   stop=true;
  }
}
 fill(0,0,0);
textSize(50);
text("Merry Christmas", 300,300);
}
 void mousePressed(){
   
  addWind=true;
 }
 
 void pileUp(){
   fill(255,255,255);
   
   x+=4.6;
   y+=4.6;
   ellipse(1300,1300,x,y);
  
   
 }

