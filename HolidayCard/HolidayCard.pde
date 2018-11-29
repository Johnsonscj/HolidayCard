Snow[] s = new Snow[500];
boolean addWind= false;
boolean stop=false;
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
 
   fill(100,100,100);
   textSize(100);
   text("Merry Christmas", 100, 300);
 
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
 

}
 void mousePressed(){
   
  addWind=true; 
 }
 
 void pileUp(){
   fill(255,255,255);
   
   x+=4.6;
   y+=4.6;
   ellipse(1300,1300,x,y);
   if(x>4000){
    finish(); 
   }
   
 }
 void finish(){
  fill(100,100,100);
   textSize(100);
   text("Merry Christmas", 100, 300);
  
 }
 
