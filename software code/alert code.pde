import processing.serial.*;

//Global variable*********************************
Serial myPort; 
String serial;
char[] serial1;
int value,col_a=255,col_b=255,col_c=255,col_d=255,counter=0;
char level;
float Xeye1=305,Xeye2=520,Yeye1=260,Yeye2=260,R1=100,R2=50,Xclick=250,Yclick=250,Xm1=250,Ym1=250,Xm2=250,Ym2=250,theta1=0,theta2=0;

//Main********************************************
void setup()
{
 size(800,900);
 frameRate(10);
 background(loadImage("angry.png"));
 textAlign(CENTER,CENTER);
 myPort = new Serial(this, Serial.list()[1], 9600);
}
int x=0;
void draw()
{
  level=Get_data();
  if(level=='a')
    happy();
  else if(level=='b')
    sad();
  else if(level=='c')
    poker();
  else if(level=='d')
    angry();
  delay(200);
  println(level);
  
}

//Function****************************************

void rect(char col,int n1,int n2)
{
  
  
  if(col=='a')
  {
    fill(60,col_a,60);
    if(col_a>150)
    col_a-=5;
    else
    col_a=255;
  }
  if(col=='b')
  {
    fill(col_b,200,120);
    if(col_b>120)
    col_b-=5;
    else
    col_b=255;
  }
  if(col=='c')
  {
    fill(col_c,50,100);
    if(col_c>150)
    col_c-=5;
    else
    col_c=255;
  }
  if(col=='d')
  {
    fill(col_d,60,60);
    if(col_d>150)
    col_d-=5;
    else
    col_d=255;
  }
  rect(0,700,800,200);
  strokeWeight(150);
  stroke(#172D81);
  point(700,800);
  strokeWeight(0);
  if(col=='a')
  {
    arc(700,800,130,130,radians(-90),radians(-65));
    fill(#172D81);
    textSize(20);
    text("0%",710,750);
    textSize(40);
    text("Calm situation :)",400,800);
  }
  if(col=='b')
  {
    arc(700,800,130,130,radians(-90),radians(30));
    fill(#172D81);
    textSize(25);
    text("33%",735,780);
    textSize(40);
    text("Be vigilant  !",400,800);
  }
  if(col=='c')
  {
    arc(700,800,130,130,radians(-90),radians(150));
    fill(#172D81);
    textSize(30);
    text("66%",730,810);
    textSize(40);
    text("Follow the news \r\n Gather the necessary equipment !!",300,800);
  }
  if(col=='d')
  {
    arc(700,800,130,130,radians(-90),radians(300));
    fill(#172D81);
    textSize(40);
    text("100%",700,790);
    textSize(30);
    counter++;
    if(counter<20)
      text("Danger !!!\r\n If there is an exit, go outdoors !!",350,800);
    else if(counter<40)
      text("Danger !!!\r\n If you do not have an exit, go under the\r\n table or inside the door frame!!",350,800);
    else if(counter<60)
      text("Danger !!!\r\n Avoid power cables,loose walls,and glassware!!",320,800);
    else if(counter<80)
      text("Danger !!!\r\nDo not use the elevator and loose stairs to exit!!",320,800);
    else
      counter=0;
  }
}
char Get_data()//*********************************
{
  if (myPort.available() > 0)
  {
    serial=myPort.readString();
    if(serial!=null)
    {
      serial1= serial.toCharArray();
      return serial1[0];
    }
    return 'n';
  }
  return 'n';
}

void happy()//************************************
{
  Xeye1=290;
  Xeye2=530;
  Yeye1=200;
  Yeye2=200;
  background(loadImage("happy.png"));
  strokeWeight(10);
  fill(#F5E8EA);
  stroke(#624417);
  ellipse(Xeye1,Yeye1,2*R1,2*R1);
  ellipse(Xeye2,Yeye2,2*R1,2*R1);
  stroke(#624417);
    Xclick=mouseX;
    Yclick=mouseY;
    theta1=-atan2(Yclick-Yeye1 , Xclick-Xeye1);
    theta2=-atan2(Yclick-Yeye2 , Xclick-Xeye2);
    fill(#624417);
    Xm1=Xeye1+R2*cos(theta1);
    Ym1=Yeye1-R2*sin(theta1);
    
    Xm2=Xeye2+R2*cos(theta2);
    Ym2=Yeye2-R2*sin(theta2);
    strokeWeight(50);
    point(Xm1,Ym1);
    point(Xm2,Ym2);
    stroke(255);
    strokeWeight(5);
    point(Xm1,Ym1);
    point(Xm2,Ym2);
    rect('a',3,3);
}

void sad()//************************************
{
  Xeye1=280;
  Xeye2=520;
  Yeye1=260;
  Yeye2=260;
  background(loadImage("sad.png"));
  strokeWeight(10);
  fill(#F5E8EA);
  stroke(#624417);
  ellipse(Xeye1,Yeye1,2*R1,2*R1);
  ellipse(Xeye2,Yeye2,2*R1,2*R1);
  stroke(#624417);
    Xclick=mouseX;
    Yclick=mouseY;
    theta1=-atan2(Yclick-Yeye1 , Xclick-Xeye1);
    theta2=-atan2(Yclick-Yeye2 , Xclick-Xeye2);
    fill(#624417);
    Xm1=Xeye1+R2*cos(theta1);
    Ym1=Yeye1-R2*sin(theta1);
    
    Xm2=Xeye2+R2*cos(theta2);
    Ym2=Yeye2-R2*sin(theta2);
    strokeWeight(50);
    point(Xm1,Ym1);
    point(Xm2,Ym2);
    stroke(255);
    strokeWeight(5);
    point(Xm1,Ym1);
    point(Xm2,Ym2);
    rect('b',3,3);
}

void poker()//************************************
{
  Xeye1=280;
  Xeye2=520;
  Yeye1=260;
  Yeye2=260;
  background(loadImage("poker.png"));
  strokeWeight(10);
  fill(#F5E8EA);
  stroke(#624417);
  ellipse(Xeye1,Yeye1,2*R1,2*R1);
  ellipse(Xeye2,Yeye2,2*R1,2*R1);
  stroke(#624417);
    Xclick=mouseX;
    Yclick=mouseY;
    theta1=-atan2(Yclick-Yeye1 , Xclick-Xeye1);
    theta2=-atan2(Yclick-Yeye2 , Xclick-Xeye2);
    fill(#624417);
    Xm1=Xeye1+R2*cos(theta1);
    Ym1=Yeye1-R2*sin(theta1);
    
    Xm2=Xeye2+R2*cos(theta2);
    Ym2=Yeye2-R2*sin(theta2);
    strokeWeight(50);
    point(Xm1,Ym1);
    point(Xm2,Ym2);
    stroke(255);
    strokeWeight(5);
    point(Xm1,Ym1);
    point(Xm2,Ym2);
    rect('c',3,3);
}

void angry()//************************************
{
  Xeye1=280;
  Xeye2=520;
  Yeye1=260;
  Yeye2=260;
  background(loadImage("angry.png"));
  strokeWeight(10);
  fill(#F5E8EA);
  stroke(#624417);
  ellipse(Xeye1,Yeye1,2*R1,2*R1);
  ellipse(Xeye2,Yeye2,2*R1,2*R1);
  stroke(#624417);
    Xclick=mouseX;
    Yclick=mouseY;
    theta1=-atan2(Yclick-Yeye1 , Xclick-Xeye1);
    theta2=-atan2(Yclick-Yeye2 , Xclick-Xeye2);
    fill(#624417);
    Xm1=Xeye1+R2*cos(theta1);
    Ym1=Yeye1-R2*sin(theta1);
    
    Xm2=Xeye2+R2*cos(theta2);
    Ym2=Yeye2-R2*sin(theta2);
    strokeWeight(50);
    point(Xm1,Ym1);
    point(Xm2,Ym2);
    stroke(255);
    strokeWeight(5);
    point(Xm1,Ym1);
    point(Xm2,Ym2);
    rect('d',3,3);
}
