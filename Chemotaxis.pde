 //declare bacteria variables here   
 Bacteria [] colony;
 void setup()   
 {
 	size(500,500);
 	//initialize bacteria variables here
 	colony = new Bacteria[20];
 	for(int i = 0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {
 	background(127);
 	noFill();
 	//move and show the bacteria
 	for(int j = 0; j<colony.length; j++)
 	{
 		colony[j].move();
 		colony[j].show();
 	}
 }  
 class Bacteria    
 {
 	int bacX, bacY, bacCol;
 	Bacteria()
 	{
 		bacX = (int)(Math.random()*501);
 		bacY = (int)(Math.random()*501);
 		bacCol = (int)(Math.random()*256);

 	}
 	void move()
 	{
 		bacX = bacX + (int)(Math.random()*4-2);
 		bacY = bacY + (int)(Math.random()*4-2);
 	}
 	void show()
 	{
 		stroke(bacCol);
 		ellipse(bacX,bacY,10,10);
 	}
 	//lots of java!   
 }    