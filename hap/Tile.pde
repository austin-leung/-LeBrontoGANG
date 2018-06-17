public class Tile {
 String shape;
 String shapeColor;
 String backgroundColor;
 int xpos;
 int ypos;
 
 PImage pattern;

 boolean selected;
 
 Tile( String pShape, String pShapeColor, String pBackgroundColor) {
   
   shape = pShape;
   shapeColor = pShapeColor;
   backgroundColor = pBackgroundColor;
   pattern = loadImage("tiles/" + pShape + pShapeColor + pBackgroundColor + ".png");
   selected = false;
   
 }
 
 void setXpos(int pXpos) {
   xpos = pXpos;
 }
 
 void setYpos(int pYpos) {
   ypos = pYpos;
 }
 
 void display() {
   
   image (pattern, xpos, ypos);
     
 }
  
 
 boolean mouseNearby() {
  
   if (((mouseX - (xpos + 100)) * (mouseX - (xpos + 100)) + (mouseY - (ypos + 100)) * (mouseY - (ypos + 100))) < 10000) {
     selected = true;
     return true;
   }
   else 
     return false;
   
   
 }
 
 boolean equals(Tile t) {
   return
     shape.equals(t.shape) &&
     shapeColor.equals(t.shapeColor) &&
     backgroundColor.equals(t.backgroundColor);
 }
   
 
}
