/*
  Blake Seekings
  
  This tutorial will look at creating shapes which appear to move.
*/


/*
    Let's review what we have learned so far:
        
        - The basic structure of a Processing Sketch including the setup() and draw() methods.
        
        - How we can define the dimensions of the canvas.
        
        - How to draw shapes to the canvas
        
        - How to change the color of the canvas and shapes drawn on it.
        
     All of this will be important for understanding how to create dynamic shapes, as well as a rudiementary
   understanding of programming in Java. 
*/




/*
    What we saw before were shapes that had been drawn to the screen but did not move. These would be static shapes
  and they are very simple. Because they do not move, there is no need to keep track of extra information about them.
  They can be created simply by using hardcoded numbers. However, if we want shapes which move across the screen we
  will need to use variables which will change as the program runs. Since the canvas is only 2 dimensional, we can
  start by declaring an x and y variable which will track the position of our shape. It is important to note
  that because they are defined OUTSIDE any other method, they are considered global variables. This means we can
  access them from anywhere in the sketch. 
*/



int x;
int y;


/*

    Next, we will need our shape to move. To do this, we have to change the x and y everytime
  we loop through draw(). The amount that we change x and y by will be called dx and dy, referring to the
  "derivatives" of these variables.
  
*/

int dx;
int dy;



/* 

  Now that we have our variables declared, lets define them in the setup() method
  
*/


void setup() {
    size(1920,1080); // 1920x1080 canvas
    background(0);  // Black background
    
    x = 200;
    y = 200;
    
    dx = 1;
    dy = 1;
    
}


/*

  Now all that is left is to draw the shape in the draw loop and then add dx and dy to x and y;

*/

void draw() {
  background(0); // This line is neccessary. To understand why, remove it and run the sketch.
  
  noStroke();
  rect(x,y,40,40);
  
  x += dx;  // += is an operator which adds the right-hand side to the left-hand side
  y += dy;
}


/* 


    Now we see a dynamic shape which moves across the screen. Changing the dx and dy values results in faster 
  movement. Adding variables for the shapes size and changing those also creates a dynamic effect. 
  
    The reason the background(0) line has to be included is so that we erase the shape from the previous frame.
  Without this line, the shape would just paint over the screen rather than move over it.


*/