Snowflake [] bob;
void setup()
{
  size (400,400);
  bob= new Snowflake[100]; 
  for (int i=0;i<bob.length;i++){
    bob[i]=new Snowflake();
  }

  background(0);
   
  
}
void draw()
{
  
for (int i=0;i<bob.length;i++){
    bob[i].erase();
    bob[i].lookDown();
    bob[i].move();
    bob[i].wrap();
    bob[i].show();
}


}


class Snowflake
{
  int x,y;
  boolean isMoving;
  
  Snowflake()
  {
    x=(int)((Math.random()*400)+1);
    y=(int)((Math.random()*400)+1);
    isMoving= true;
  }
  void show()
  {
    fill(255);
    stroke(0);
    ellipse(x,y,5,5);
   
  }
  void lookDown()
  {
    if(get(x,y+5) != color(0)){

      isMoving=false;
    }
    else  
    isMoving=true;
  }
  void erase()
  {
    fill(0);
    ellipse(x,y,7,7);
    
  }
  void move()
  {
    if(isMoving==true){
      y++ ;
    }
    else if(isMoving==false){

      y=y;
    } 
      
    
    
    
  }
  void wrap()
  {
    if(y==395){
      y=0;
      x=(int)((Math.random()*400)+1);
    }
  }
}
void mouseDragged()
{
  noStroke();
  fill(255,0,0);
  ellipse(mouseX,mouseY,10,10);


  

  
}

