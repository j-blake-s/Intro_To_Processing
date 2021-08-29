/*  
  Blake Seekings
    
  This tutorial will look at different ways we can define the canvas. 
*/
    
    
    
/*  You may have noticed in the last example that when the sketch was started, a small window
 appeared in the middle of the screen with a gray rectangle in it. This window is called the 
 "canvas" and appears like that becuase we did not define its size. The canvas is a very important
 part of Processing since it is where we display our graphics; Not defining the canvas is like trying
 to draw without paper! */



/* size(width,height)
  *
  *   The size() method is the primary way in which we define the canvas. When we use the size() method,
  * we must include 2 numbers in the parantheses. The first number defines the width of the canvas while
  * the second number defines the height of the canvas.
  *
  *   Try running this sketch to see how the size() method works. You can even change the numbers
  * to see how that affects the canvas. Some numbers you could try are:
  *
  *                            size(1920,1080);
  *                            size(300,300);
  *                            size(400,1000);
  *
  *  NOTE: Canvas definition should always be done as the first thing in a sketch. Calling other
  *        methods before defining the canvas might cause something to break.
*/


/* fullScreen()
  *   The fullScreen() method is an easy way to define the canvas so that it has the same dimensions as your
  * computer screen. This is an alternative to the size() method.
  *
  *   If you would like to try it out, delete the backslashes (//) that are in front
  * of fullScreen() and place them in front of the size(800,600). Since both of these methods
  * attempt to define the canvas, only 1 can be used at a time. The backslashes (//) will "comment out"
  * the rest of that line which stops it from being compiled.
  *
  *  NOTE: Press esc to close the canvas (You may have to click on the canvas and then press esc).
  *
*/


public void setup() {
  size(800,600);
  //fullScreen();
}

public void draw() {}