int limit=5;
public void setup(){
size(400,400);
}
public void draw(){
  background(192);
  sierp(20,375,360);
}
public void mouseDragged(){
  if(mouseX>1)
    limit=mouseX;
}
public void sierp(int x, int y, int len){
  if(len<=limit)
    triangle(x,y,x+len,y, x+len/2, y-len);
  else{
    sierp(x,y,len/2);
    sierp(x+len/2,y,len/2);
    sierp(x+len/4, y-len/2, len/2);
  
  
  }
}
