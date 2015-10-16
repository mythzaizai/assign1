PImage bg1;
PImage hp;
PImage fighter;
PImage treasure;
PImage enemy;
PImage bg2;


int x,y,z,a,b,c;



void setup () {
  b=1;
  c=-639;
  y = floor(random(50,590));
  z = floor(random(50,430));
  a = floor(random(200));
  
  size(640,480) ;
  bg1 = loadImage("img/bg1.png") ;
  bg2 = loadImage("img/bg2.png") ;
  hp = loadImage("img/hp.png") ;
  fighter = loadImage("img/fighter.png") ;
  treasure = loadImage("img/treasure.png") ;
  enemy = loadImage("img/enemy.png") ;
}

void draw() {
  if(b==639){b=-639;}
  if(c==639){c=-639;}
  
  
  x=x+3;
  x%=640;
  image(bg1,b++,0);
  image(bg2,c++,0);
  stroke(255,0,0);
  fill(255,0,0);
  rect(21,15,a,15);
  image(hp,10,10);
  image(fighter,550,240);
  image(treasure,y,z);
  image(enemy,0+x,300);
  
 }

