class Mover {
  
  int x,y,dx,dy,R,G,B,size;
 
  /* Multiple constructors allows us to different ways to make objects. For this example we will have
    2 cons. The first creates a randomly placed Mover while the second places a Mover at a specifc location. */
  Mover() {
    init(floor(random(width)),floor(random(height)));
  }
  
  Mover(int start_x,int start_y) {
    init(start_x,start_y);
  }
  
  /* It is a good idea to use an init method in conjunction with multiple constructors so you don't have to 
    rewrite a lot of code. */
  private void init(int start_x,int start_y) {
    x = start_x;
    y = start_y;
    
    dx = floor(random((SPEED*2)+1)) - SPEED; // Possible values: -SPEED to SPEED
    dy = floor(random((SPEED*2)+1)) - SPEED;
    
    R = floor(random(256)); // Possible values: 0 to 255
    G = floor(random(256));
    B = floor(random(256));
    
    size = floor(random(HIGH_SIZE-LOW_SIZE+1))+LOW_SIZE; // Possible values: LOW_SIZE to HIGH_SIZE
  }

  void display() {
    noStroke();
    fill(R,G,B);
    rect(x,y,size,size);
  }
  
  void move() {
    x += dx;
    y += dy;
  }
  
  void loop() {
    display();
    move();
  }
}