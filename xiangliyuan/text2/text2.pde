import processing.sound.*;
SoundFile file;


int value=200;
int value2=255;
int value3=0;
int value4=255;
int value5=0;
PImage p1,p2,p3,p4,p5,p6,p7;
int timex=250;
int timey=300;
int yearx=250;
int yeary=310;


void setup(){
  size(500,900);
    background(0);
   


  
 
}


void draw(){
  tint(255,value4);
  p1=loadImage("1.png");
  image(p1,20,35);
 


  
  fill(0);
  rectMode(CENTER);
  rect(250,0,150,130,15);
  fill(30);
  ellipse(290,46,20,20);
  rect(210,46,15,25,15);
  rect(250,46,25,15,15);
  
 noFill();
 stroke(255);
 ellipse(250,840,20,20);
  
  fill(255,255,255,value2);
  text("Press space key to open",250,700);
  
 
 fill(255,255,255,value4);
  textAlign(CENTER);
  textSize(50);
  // 获取时分秒
  int h = hour(),min = minute(),s = second();
  // 字符串化 
  String sh = str(h),smin = str(min),ss = str(s);
  // 补齐0
  if(h<10){sh="0"+sh;}if(min<10){smin="0"+smin;}if(s<10){ss="0"+ss;}
  // 系统时间字符串
  String sysTime =sh+":"+smin+":"+ss;
  text(sysTime, timex, timey); 


  textSize(20);
   // 获取年月日
  int y = year(),m = month(),d = day(); 
  String sy = str(y),sm = str(m),sd = str(d);  
  if(m<10){sm="0"+sm;}if(d<10){sd="0"+sd;}
  String sysTime1 = "\n "+sy+"/"+sm+"/"+sd;
  text(sysTime1,yearx,yeary);
  

noStroke();
pushStyle();
fill(255,255,255,value3);
rect(250,260,380,50);
 p2=loadImage("2.png");
 tint(255,value3);
  image(p2,390,245);
popStyle();

pushStyle();
rectMode(CORNER);

fill(0,120,215,value3);
rect(60,320,180,180);
 p3=loadImage("3.png");
 tint(255,value3);
  image(p3,90,340);

fill(16,124,16,value3);
rect(260,320,180,180);
 p4=loadImage("4.png");
 tint(255,value3);
  image(p4,290,340);

fill(220,60,0,value3);
rect(60,520,180,180);
 p5=loadImage("5.png");
 tint(255,value3);
  image(p5,85,550);

fill(119,25,170,value3);
rect(260,520,180,180);
 p6=loadImage("6.png");
 tint(255,value3);
  image(p6,290,540);
  
popStyle();


 fill(0,0,0,value);
 rect(250,450,460,900);
 
 
 fill(0);
 if(mousePressed){
   ellipse(mouseX,mouseY,20,20);
 }


}





void keyPressed() {
 if (key==' ') {
    value = 0;value2=0;value3=255;
    timex=160;timey=190;yearx=110;yeary=100;
  }
  if (key=='X') {
    value = 200;value2=255;value3=0;value4=255;
    
    timex=250;timey=300;yearx=250;yeary=310;
  }
}

void mouseClicked() {
  if (mouseX>260 && mouseX<440 &&mouseY>520 &&mouseY<700) {
    fill(239,240,196);
    rect(250,430,452,780,15);    
    value4=0;
    value3=0;
    value2=0;

  
  } 

  
 if (mouseX>60 && mouseX<240 &&mouseY>520 &&mouseY<700) {  
         p7=loadImage("7.png");
         image(p7,20,35);
         file = new SoundFile(this,"aaa.wav");
         file.play();
    value4=0;
    value3=0;
    value2=0;}
    
    
  if (mouseX>240 && mouseX<260 &&mouseY>830 &&mouseY<850) {
    value = 0;value2=0;value3=255;value4=255;
    timex=160;timey=190;yearx=110;yeary=100;}
    
   
  } 
