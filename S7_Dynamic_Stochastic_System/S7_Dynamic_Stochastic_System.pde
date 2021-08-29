/*
  Blake Seekings
  
  This tutorial will show how to create a randomized system of moving objects.
*/


/*

  We hardcoded a lot of features of the Movers in the previous examples for simplicity. However,
that created a very boring look to the program. We will instead randomize the Movers so that we can
create a much more interesting model. 
 
  Head over to the Mover tab to see how the class has changed.
  
*/




// Defined the ArrayList here instead of setup() for simplicity.
ArrayList<Mover> movers = new ArrayList<Mover>();


void setup() {
  fullScreen(); // A canvas the size of the screen
  background(0);
  
  for(int i = 0; i < 10;++i) {
    movers.add(new Mover());
  }
}

void draw() {
  background(0);
  
  for (Mover mover : movers) {
    mover.loop();
  }
  
}


   