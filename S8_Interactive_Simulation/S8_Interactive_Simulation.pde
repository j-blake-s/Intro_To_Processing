/*
  Blake Seekings
  
  This will be the final tutorial looking at how we can make a simulation reacting to user input
*/



/*

  So now we are able to spawn Movers with completly random properties and update them very easily. The final
step in these tutorials is seeing how we can link this to user input and the different methods Processing
provides. We will also look at some good coding paradigms in Processing. 

*/

/*
  Everything is mostly the same from the last tutorial, except we aren't populating the ArrayList at all.
I also included some text to describe how to use the simulation

  Head over to the Mover tab to see how it has changed. Then look at input and settings to understand what this
program is doing.
*/

ArrayList<Mover> movers = new ArrayList<Mover>();
void setup() {
  fullScreen();
  background(0);

}

void draw() {
  background(0);
  
  drawInstructions(); // See below
  
  for (Mover mover : movers) {
    mover.loop();
  }
}

void drawInstructions() {
   stroke(255);
   fill(255);
   textSize(32);
   text("Click mouse to spawn Mover!\nPress Space to clear Movers!",100,100);
}