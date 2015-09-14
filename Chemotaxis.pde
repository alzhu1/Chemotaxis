 //declare bacteria variables here   
 Bacteria [] colony;
 Food jeeves = new Food();
 void setup()   
 {
 	size(500,500);
 	//initialize bacteria variables here
 	colony = new Bacteria[20];
 	for(int i = 0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	frameRate(30);
 }   
 void draw()   
 {
 	background(127);
 	noFill();
 	jeeves.show();
 	//move and show the bacteria
 	for(int j = 0; j<colony.length; j++)
 	{
 		colony[j].move();
 		colony[j].show();
 	}
 }  
 void mousePressed()
 {
 	jeeves.foodX = mouseX+5;
 	jeeves.foodY = mouseY+5;
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
 		bacX = bacX + (int)(Math.random()*3)-1;
 		bacY = bacY + (int)(Math.random()*3)-1;
 		if(jeeves.foodX+5 > bacX)
 		{
 			bacX = bacX + (int)(Math.random()*3);
 		}
 		if(jeeves.foodX+5 < bacX)
 		{
 			bacX = bacX + (int)(Math.random()*3)-2;
 		}
 		if(jeeves.foodY+5 > bacY)
 		{
 			bacY = bacY + (int)(Math.random()*3);
 		}
 		if(jeeves.foodY+5 < bacY)
 		{
 			bacY = bacY + (int)(Math.random()*3)-2;
 		}
 	}
 	void show()
 	{
 		stroke(bacCol);
 		noFill();
 		ellipse(bacX,bacY,10,10);
 	}
 	//lots of java!   
 }    
 class Food
 {
 	int foodX, foodY;
 	Food()
 	{
 		foodX = (int)(Math.random()*501);
 		foodY = (int)(Math.random()*501);
 	}
 	void show()
 	{
 		fill(0,255,0);
 		rect(foodX,foodY,10,10);
 	}
 }