/*
  Blake Seekings
  
  This tutorial will look at creating a class in Processing.
*/

/*

    Continuing from the last tutorial, we see that a lot of code is needed to make a single moving rectangle.
  If we wanted to make multiple of those rectangles we would have to keep track of all of their positions meaning
  2 variables for each one. This is a lot of work and thankfully there is an easy way to do this. We can create
  a Mover class which has much of the same code from before. Becuase this is now a class, we can make multiple
  "instances" or objects from it, all with their own variables. 
 
    Near the top of the editor there should be a tab named S5_Classes which is the tab we are currently in. 
  next to it should be a tab named Mover. Click on that tab to view it. 
*/



/*

    First we start by declaring a Mover which we will define in setup(). Once again, this variable is placed
  outside any method so it is a global variable. This is important so that we can access it from draw().

*/
Mover example;


/*
    Then we proceed to declare the example Mover in setup() by calling the constructor of the Mover class. We have
  to include 2 parameters, the first being the starting x position, the second being the starting y position. 
 
*/
public void setup() {
  size(1920,1080);
  background(0);
  
  example = new Mover(600,300); // Try changing these values to see what happens
}

/*

  Now all we have to do is call background(0) and our loop() combination method in order to draw the moving shape.
  
*/
public void draw() {
  background(0);
  example.loop();
}