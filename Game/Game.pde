private Player player; //<>//
private ArrayList<Level> levels;
private int currentLevel = -1;
LevelEditor editor;
public void setup() {
  size(1080, 720);
  player = new Player(new PVector(200, 100), new PVector(20, 20), this);
  levels=new ArrayList<Level>();
  loadLevels("Levels.txt");
  showNextLevel();

editor = new LevelEditor();
}

public void draw() {
  background(51);
  displayLevel();
  player.update();
  player.display();
}

public void showNextLevel() {
  currentLevel++;
}
private void displayLevel() {
  levels.get(currentLevel).display();
}

private void loadLevels(String fileName) {
  String[] lines = loadStrings(fileName);

  int currentLine=0;  
  Level newLevel = new Level("TempLevel",0);
  int y = 0;
  while (currentLine<lines.length) {
    print(currentLine);
    if (lines[currentLine].length()>0) {
      if (lines[currentLine].charAt(0)=='-') {//new Level
        String levelName="";
        y=0;      
        for (int i=2; i<lines[currentLine].length(); i++) {
          levelName+=lines[currentLine].charAt(i);
        }
        newLevel = new Level(levelName, squareSize());
        levels.add(newLevel);
      } else { 
        for (int i=0; i<lines[currentLine].length(); i++) {
          Block newBlock;
          switch(lines[currentLine].charAt(i)) {

          case '0': 
            newBlock = new Block(new PVector(i, y), new PVector(1, 1), color(50, 40, 40), squareSize());
            newLevel.addBlock(newBlock);
            break;
          case '1': 
            newBlock = new Block(new PVector(i, y), new PVector(1, 1), color(220, 220, 100), squareSize());
            newLevel.addBlock(newBlock);
            break;
          }
        }
      }
      y++;
    }

    currentLine++;
  }
}


public void mouseReleased(){
  editor.mouseReleased();
}

private int squareSize() {
  return width/30;
}