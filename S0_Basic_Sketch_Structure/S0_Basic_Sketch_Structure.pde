/*  
    Blake Seekings
    
    This tutorial will examine the structure of a Processing sketch 
*/




/*  In Java, the main method is where every program starts and is a requirement for the code to work properly. 
  
  In Processing: Java there are no actual main methods but there are 2 methods which SHOULD be
included in almost every sketch. These are:
      
      * public void setup()
      * public void draw()
  
  If setup() is included in a sketch it will be the first method called similar to the main method. This
is where enviroment settings are determined and the canvas (see next tutorial) is defined. 
  
  After setup() has terminated, the draw() method will be called. draw() is unique becuase it will 
automatically loop itself, unless you explicitly call noLoop() which will cause draw() to 
terminate when it reaches the end.

  The order of these methods and how many times they are called can be seen with the below example. Each 
method contains exactly one print statement and will tell us when they are called by printing to the
console. The console can be found at the bottom of the Processing IDE, it is the black field beneath this coding
window.

  Press the play button, found in the top-left, to start the sketch.
  Press the stop button, found next to the play button, to stop the sketch.
  
  See below for an explanation of the output
  
*/

public void setup() {
  
  print("Setup is called once!\n");  // Prints to >_Console (see tab below next to !Errors)
 
}

public void draw() {

    print("While draw is called repeatdly!\n");

}


/*


    What should be seen in the console after running the sketch is:
    
          Setup is called once!
          While draw is called repeatdly!
          While draw is called repeatdly!
          While draw is called repeatdly!
          While draw is called repeatdly!
          While draw is called repeatdly!
          While draw is called repeatdly!
          While draw is called repeatdly!
          While draw is called repeatdly!
                    .
                    .
                    .
                    .
                    
    The shows exactly what was stated before, the setup method is called at the start of the program before
  any other method and runs exactly once. After which the draw method is called and continously loops until 
  you stop the sketch.
  
*/