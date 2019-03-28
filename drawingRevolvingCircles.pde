float i;
float j;
float x;
float y;
int inc;
void setup(){
  background(0);
  size(1080,1080);
}

void draw(){
  if(i >= 50){
    inc = inc + 1;
  }
  else if(i <= 0)
    inc = inc + 1;
  if(j < 360){
    j = j + 1;
  }else{
    i = (inc%2 > 0? i + 5: i -5);
    j = 0;
  }
  fill((millis()*5)%255, (millis()*2)%255, (millis()/5)%255);
  float x = cos(degrees(j));
  float y = sin(degrees(j));
  ellipse( mouseX + 30*x,mouseY + 30* y, 50, 50); 
}

void keyPressed(){
    float size = random(50);
    x = random(0,1080);
    y = random(0,1080);
    if(key ==  'q'){
      fill((millis()*5)%255, (millis()/5)%255, (millis()*3)%255);
    }
    else if(key == 'w'){
      fill((millis()*5)%255, (millis()%255), (millis()*3)%255);
    }
    else if(key ==  'a'){
      fill(0, (millis())%255, (millis()*3)%255);
    }
    else if(key == 'd'){
      fill((millis()*5)%255, (millis())%255, 0);
    }
    else
      background(0);
    rect(x,y,x+size,y+size);
}
