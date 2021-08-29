/*
   Blake Seekings
   
   This tutorial will show how to use ArrayLists to maintain a large amount of objects.
*/

/*

   As we saw in the first tutorial with moving objects, it takes a lot of code to make even a single
  moving rectangle without classes. While classes make it easier to create multiple objects, it does
  not make it easier to maintain them. If we wanted to make multiple movers it would look something like:
  
  
  Mover mover1;
  Mover mover2;
  Mover mover3;
  Mover mover4;
  
  void setup() {
    size(1920,1080);
    background(0);
    
    mover1 = new Mover(100,100,40,40);
    mover2 = new Mover(200,100,40,40);
    mover3 = new Mover(300,100,40,40);
    mover4 = new Mover(400,100,40,40);
  }
  
  void draw() {
    background(0);
    mover1.loop();
    mover2.loop();
    mover3.loop();
    mover4.loop();
  }
  
  Not only is this a lot of code, but it is not scalable. Imagine if we wanted to make a couple thousand Movers, 
it simply would not be possible or practical. Instead, we can store all of the different movers in an ArrayList
and then iterate over that ArrayList to maintain them.

*/


/*

  An ArrayList is used becuase it is resizable and easy to iterate over. A regular array has a fixed size so
we want to avoid that when we aren't sure how many objects we will have. 

  The syntax for creating an ArrayList is:
    
    ArrayList<~T> name = new ArrayList<~T>();
    
  The T is called a generic type becuase it can be replaced with any other type. This is done so that the 
ArrayList knows how big the object is it needs to store. It is not obvious, but when you declare a regular array
with:

    ~T[] ~name = new ~T[]; 
   
You are doing the same thing, however you wouldn't think of it as replacing the generic type.

*/

ArrayList<Mover> movers; // Notice how instead of ~T, we used Mover

void setup() {
  size(1920,1080);
  background(0);
  movers = new ArrayList<Mover>(); 
  
  // Now we fill the ArrayList with movers using the add() method
  movers.add(new Mover(1100,100));
  movers.add(new Mover(1200,100));
  movers.add(new Mover(1300,100));
  
  
  // There is an easier way to fill the ArrayList by using a for loop
  for (int i = 1; i < 11; ++i) {
     movers.add(new Mover(i*100,100));
  }

}

void draw() {
  background(0);
  
  // We can now maintain this group of Movers by either indexing them or using another for loop
  movers.get(0).loop();
  movers.get(1).loop();
  movers.get(2).loop();
  
  for (int i = 3; i < movers.size();i++) {
    movers.get(i).loop();
  }
  
  /*
  
    We could also use an enhanced for loop if you know the syntax
    
  */
  
  // for (Mover mover : movers) {
  //    mover.loop();
  // }
}