/*

    Tabs in Processing act as page breaks so the programmer can more easily group together related code. In 
  this tab we will define the Mover class.

*/

class Mover {

  /* 
      Here we see the same variables as in the last tutorial. Since they are now defined inside a class, they
    are considerd "instance" variables because they are unique for every "instance" of the class. If you have 
    programming experience in Java you might notice that these variables are missing the public keyword in
    front of them. This is becuase Processing automatically assumes everything to be public unless stated
    otherwise. Thus, we can omit the public keyword in all cases.
  
  */
  
  int x;
  int y;
  int dx;
  int dy;
  
  /* 
  
      Next up is the constructor which allows the user to enter parameters to set the initial x and y.
    Whenever we make a new Mover, we use this constructor which returns the newly "constructed" object.

  */
  
   Mover(int start_x, int start_y) {
     x = start_x;
     y = start_y;
     
     dx = 1;
     dy = 1;
   }
   
   /* 
   
       Now we need to add methods to make our job even easier. The most simple method we can make is a
     display method where we will draw the Mover to the screen.
     
   */
   
   void display() {
     noStroke();
     rect(x,y,40,40);
   }
   
   /* 
   
       Another easy method to make is the move method, which will add dx and dy to our x and y.
   
   */
   
   
   void move() {
     x += dx;
     y += dy;
   }
   
   
   /*
   
       There is a 3rd method we can make which combines the previous 2. This method makes it very simple
     to interact with the Mover.
     
   */
   
   void loop() {
       display();
       move();
   }
   
   /* 
   
       Return to the S5_Classes tab to observe how we make a Mover and animate it.
       
   */
}