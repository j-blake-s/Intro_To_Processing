/*

  In general it is a good idea to make tabs which group related code so that you can find and
manipulate it quickly. 

  Once such tab I commonly use is the input tab. This tab is where I place all the methods relating
to input from the user.

  In Processing, there are event-listeners for the keyboard and mouse which will notify certain methods
when they are activated.

*/

/*
  There is an event-listener whose job it is to watch over the mouse. Whenever the mouse is pressed down, it
is supposed to call the mousePressed() method which is defined elsewhere. By "overloading" this method
(i.e re-defining it), the event-listener will be redirected here and then whatever code we put in this method
will run every time the mouse is pressed. */
void mousePressed() {
  
  // mouseX and mouseY are built-in variables which return the position of the mouse.
  for (int i = 0; i < SPAWN_SIZE; ++i)
    movers.add(new Mover(mouseX,mouseY));  // Add a new Mover at the mouse's current position
  
}

/*
  There is another event-listener whose job it is to watch over the keyboard. Whenever any key is pressed, it
calls the keyPressed() method. By defining the keyPressed() method ourselves we are able to run whatever code
we include everytime a key is pressed. */
void keyPressed() {
  
  /* Becuase this method is being called at every keyPress, we want to make sure that stuff only happens for
  the keys we care about. To do this access the key built-in variable. This variable stores the most recent 
  key press as a number. To check what number belongs to what key consider using this site:
                                                                    
                                        https://keycode.info/      */
                                        
  if (key == 32) { // Space has a key of 32
    movers = new ArrayList<Mover>();  // This clears the ArrayList
  }
  
}