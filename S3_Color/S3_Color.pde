/*
  Blake Seekings

  This tutorial will cover how to change the color of different objects.
*/


/*
  
    A reminder that "computer" color is different from "paint" color. 
    
      - Computers base their color off of the eye which has 3 differnt cones: Red, Green, and Blue. The 
        more these cones are stimulated the more color the brain perceives. If all 3 cones are fully activated,
        the brain will perceive it as white. 
  
      - Paint works by "reflecting" certain wavelengths of light towards the eye and absorbing the rest. This
        means that red paint actually absorbs all colors besides red. When paint is mixed together, it starts
        to absorb more wavelengths of light. When all 3 primary paints are mixed together, very little light is
        reflected and thus is perceived as black. 
        
    Computers use 3 values ranging from 0 to 255 to model the cones of the eye being stimulated. This is referred 
  to as an RGB value (Red-Green-Blue). Examples of RGB are:
       
       - (0,0,0) is black 
       
       - (255,0,0) is Red
       - (0,255,0) is Green
       - (0,0,255) is Blue
       
       - (255,255,0) is Yellow
       - (255,0,255) is Magenta
       - (0,255,255) is Cyan
       
       - (255,255,255) is white
       
     When all 3 values are the same, this creates a color from black to white depending on how high the value is.
   There is a shortcut for creating such a color where only a single parameter is used instead of 3. This is
   referred to as the gray-scale or gray-scale colors. Examples of gray-scale colors are:
       
       - (0) is black
       - (1 through 254) are different shades of gray
       - (255) is white
       
     Processing also allows colors to have an opacity value added to them to denote transparency. Just like
   RGB and gray-scale, this value ranges from 0 (invisible) to 255 (opaque). Opacity values are placed after the
   gray-scale value and after all 3 RGB values. Examples of opacity colors are:
       
       - (0,50) would be black on the gray-scale with an opacity of 50
       
       - (255,0,0,155) would be Red in RGB with an opacity of 155
       
       - (255,131,206,255) would be a light pink in RGB with opacity of 255
       
     Opacity is a useful tool for 2 reasons. Firstly, when an transparent color is drawn in an area more
   than once, it will appear to become more opaque. Not only would this allow you to mix colors in real-time, but
   it can also create a reverse fade effect where the color initally appears washed out but then becomes very rich
   and vibrant. Secondly, a transparent color will not fully cover anything behind it, allowing for objects to still
   be seen yet viewed through a filter. This allows for very creative effects when used properly.
  
   * Methods which take color parameters are:
       
           - background(): Changes the color of the canvas background
               NOTE: The canvas must be defined (i.e size() has been called) in order to 
                    change the background.
               NOTE: Unlike stroke and fill, background does not accept opacity values.
               NOTE: This will "reset" the canvas since it covers everything up.
               
           - stroke(): Sets the stroke color for the sketch.
               NOTE: Once set, multiple shapes can be drawn with the same stroke.
               NOTE: There is a noStroke() method to disable stroke when drawing.
           
           - fill(): Sets the fill color for the sketch
               NOTE: Once set, multiple shapes can be drawn with the same fill.
               NOTE: There is a noFill() method to disable fill when drawing.

           
           
   NOTE: Go to the toolbar in the top-left and click on "Tools > Color Selector..." to experiment with
        different colors.
*/

public void setup() {

  size(1920,1080); // 1920x1080 canvas
  strokeWeight(8); // Increases the size of the stroke, for visibility.
  
  // Change the values in this method to see how it affects the background.
  background(155); // Gray background
  
}


public void draw() {
  
  /*
  
      NOTE: Even though draw() is a loop, it does not reset the stroke or fill color. Therefore,
    everytime you draw a shape, make sure to set the stroke and fill beforehand so that any previous calls 
    to those methods do not accidentally affect it. 
    
  */

  stroke(0); // Default stroke color
  fill(255); //Default fill color
  rect(300,300,500,500);// Default rectangle
  
  
  // Go ahead and change the values in these 2 methods to see how it affects the rectangle.
  stroke(255);
  fill(0);
  
  // Try these out to see what disabling the stroke or fill does to the rectangle.
  //noStroke();
  //noFill();
  
  // Try these out to see the reverse fade effect
  //stroke(0);
  //fill(255,0,0,3);
  
  
  rect(1200,300,500,500); // Custom rectangle

}