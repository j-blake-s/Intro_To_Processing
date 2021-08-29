/*
   Blake Seekings
    
   This tutorial will look at how to draw different shapes to the canvas. 
*/



/*  When we want to draw something to the canvas, we can use a variety of built-in methods
which do most of the heavy lifting for us. The 3 most simple and useful of these methods are:

    * rect(x,y,width,height) : Draws a rectangle at (x,y) with with a certain width and height
          
          x -> x-coordinate of the rectangle
          y -> y-coordinate of the rectangle
      width -> Pixel length of the rectangle base
     height -> Pixel length of the rectangle sides
     
       NOTE: By default, rectangles will be drawn with the x,y determining the position of the TOP-LEFT corner
             of the rectangle and not the center of it. This can be changed with the rectMode() method.
    
    * ellipse(x,y,width,height) : Draws an ellipse centered at (x,y) with with a certain width and height
    
          x -> x-coordinate of the ellipse center
          y -> y-coordinate of the ellipse center
      width -> Pixel length of the ellipses base diameter
     height -> Pixel length of the ellipses height diameter
     
       NOTE: In contrast to how rectangles are drawn, the x,y for the ellipse method determines the CENTER
             of the ellipse.
    
    * line(x1,y1,x2,y2) : Draws a line between 2 points
    
          x1 -> x-coordinate of the first point
          y1 -> y-coordinate of the first point
          x2 -> x-coordinate of the second point
          y2 -> y-coordinate of the second point


    Play around with the methods below to change the size and position of the shapes
    
*/

public void setup() {
  size(1640,1280); // Define the canvas to be 1640 pixels wide and 1280 pixels high
  
  
  rect(50,50,400,400); // Draw a rectangle starting at pixel (50,50) with a base of 400 and height of 400
  
  ellipse(1200,350,400,400); // Draw an ellipse with center (1200,350) with base diameter 400 and height diameter 400
  
  line(100,1100,1000,500); // Draw a line from point (100,1100) to point (1000,500)
  
  
}


public void draw() {}