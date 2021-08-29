class Mover {
  
  int x;
  int y;
  int dx = 1; // Instead of defining them in the constructor we can just give them inital values.
  int dy = 1; 
  
   Mover(int start_x, int start_y) {
     x = start_x;
     y = start_y;
   }
   
   void display() {
     noStroke();
     rect(x,y,40,40);
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