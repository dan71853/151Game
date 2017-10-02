import java.util.ArrayList;

public class Level {
  private ArrayList<Block> blocks;
  private String name;
  private int squareSize;

  public Level(String name,int squareSize) {
    this.name=name;
    blocks = new ArrayList<Block>();
    this.squareSize=squareSize;
  }

  public void addBlock(Block block) {
    blocks.add(block);
  }

  public void display() {
    for (Block b : blocks) {
      b.display();
    }
  }

  public String toString() {
    return  name;
  }
}