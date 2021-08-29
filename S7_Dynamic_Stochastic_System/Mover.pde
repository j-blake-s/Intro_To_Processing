class Mover {
  
  // In order to randomize the Movers, we will need to store the results of the randomness in variables.
  int x;
  int y;
  int dx;
  int dy;
  int R;
  int G;
  int B;
  int size;
  
  
  /*
    
    The random() method will return a random decimal between 0 and whatever number is passed. In order to create
    a series of random integers, we use the floor() function to cut off the decimal. Since whatever number passed
    is not included in the range of the possible numbers, we add 1 to it so that it equals out.
    
    To create a random integer between 0 and N, we write:
        
         floor(random(N+1));
         
    To create a random integer between L and L+N, we write:
    
         floor(random(N+1)) + L;
  */
  
  Mover() {
    x = floor(random(width)); // width is a built-in variable which is equal to the width of the canvas
    y = floor(random(height)); // height is a built-in variable which is equal to the height of the canvas
    
    dx = floor(random(11)) - 5; // Possible values: -5 to 5
    dy = floor(random(11)) - 5;
    
    R = floor(random(256)); // Possible values: 0 to 255
    G = floor(random(256));
    B = floor(random(256));
    
    size = floor(random(61))+20; // Possible values: 20 to 80
  }
  
  /*
    Now we use those random variables to set the fill of the Mover. This gives each one a random color.
    
    We also use it to set the x,y,and size parameters. Giving each one a random starting position and size.
  */
  
  void display() {
    noStroke();
    fill(R,G,B);
    rect(x,y,size,size);
  }
  
  /*
  
    We then add a random amount to x and y giving each Mover a different speed.
  
  */
  void move() {
    x += dx;
    y += dy;
  }
  
  void loop() {
    display();
    move();
  }
}