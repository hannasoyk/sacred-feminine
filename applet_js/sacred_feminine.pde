Ball ball1;
Ball ball2;
Ball ball3;
Ball ball4;
Ball ball5;
Ball ball6;
Ball ball7;
Ball ball8;
Ball ball9;

float gravity = 0.1;

float r = 255;
float g = 255;
float b = 124;
PImage img;

void setup() {
  size (500, 500);
  smooth();
  noStroke();

  ball1 = new Ball (50, 50, 16);
  ball2 = new Ball (100, 100, 22);
  ball3 = new Ball (150, 150, 28);
  ball4 = new Ball (200, 200, 36);
  ball5 = new Ball (250, 250, 46);
  ball6 = new Ball (300, 200, 36);
  ball7 = new Ball (350, 150, 28);
  ball8 = new Ball (400, 100, 22);
  ball9 = new Ball (450, 50, 16);
}

void draw() {
  img=loadImage("Pink Peony.jpg");
  image (img, 0, 0);

  ball1.display();
  ball2.display();
    ball3.display();
  ball4.display();
  ball5.display();
  ball6.display();
  ball7.display();
  ball8.display();
    ball9.display();



  ball1.update();
  ball2.update();
    ball3.update();
  ball4.update();
  ball5.update();
    ball6.update();
  ball7.update();
    ball8.update();
  ball9.update();

}


class Ball {

  float x;      
  float y;       
  float speed;   
  float w;      


  // Ball constuctor
  Ball(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
    speed = 0;
  }


  void display() {
    // Display the square 
    fill(r, g, b, 128); 
    ellipse(x, y, w, w);
  }

  void update() {
    // Add speed to location
    y = y + speed; 

    // Add gravity to speed
    speed = speed + gravity; 

    // If square reaches the bottom 
    // Reverse speed 
    if (y > height) { 
      speed = speed * -0.95;  
      tint(r, g, b);
      r=random(255);
      g=random(255);
      b=random(255);
    }

    if ( r > 255 )
    {
      r = 255;
    }
    if ( g > 255 )
    {
      g = 100;
    }

    if ( b > 255 )
    {
      b = 80;
    }
  }
}







