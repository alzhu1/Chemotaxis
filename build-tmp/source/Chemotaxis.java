import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 //declare bacteria variables here   
 Bacteria [] colony;
 public void setup()   
 {
 	size(500,500);
 	//initialize bacteria variables here
 	colony = new Bacteria[20];
 	for(int i = 0; i<colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 public void draw()   
 {
 	background(127);
 	noFill();
 	//move and show the bacteria
 	for(int j = 0; j<colony.length; j++)
 	{
 		colony[j].move();
 		colony[j].show();
 	}
 	System.out.println((int)(Math.random()*4-2));
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
 	public void move()
 	{
 		bacX = bacX + (int)(Math.random()*4-2);
 		bacY = bacY + (int)(Math.random()*4-2);
 	}
 	public void show()
 	{
 		stroke(bacCol);
 		ellipse(bacX,bacY,10,10);
 	}
 	//lots of java!   
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
