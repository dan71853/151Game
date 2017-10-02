public class Block {

  private PVector pos, size;
  private color colour;
  private int squareSize;

  public Block(PVector pos, PVector size, color colour, int squareSize) {
    this.pos = pos;
    this.size = size;
    this.colour = colour;
    this.squareSize=squareSize;
  }

  public void display() {
    fill(colour);
    stroke(colour);
    rect(pos.x*squareSize, pos.y*squareSize, size.x*squareSize, size.y*squareSize);
  }



  public String toString() {
    return  pos.x +" " +pos.y+" "+  size.x+" "+size.y+" "+squareSize;
  }
}