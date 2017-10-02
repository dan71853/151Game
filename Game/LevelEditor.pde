class LevelEditor {


  public void mouseReleased() {
    levels.get(currentLevel).addBlock(new Block(new PVector(mouseX/squareSize(), mouseY/squareSize()), new PVector(1, 1), color(220, 220, 100), squareSize()));
  }
}