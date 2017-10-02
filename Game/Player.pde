public class Player {
  PVector pos, vel, acc, size;
  Game game;

  public Player(PVector pos, PVector size, Game game) {
    this.pos = pos;
    this.vel = new PVector(0f, 0f);
    this.acc = new PVector(0f, 0.2f);
    this.size = size;
    this.game = game;
  }

  public void update() {
    vel.add(acc);
    pos.add(vel);
  }

  public void display() {
    game.fill(20, 250, 20, 90);
    game.stroke(20, 200, 20);

    game.rect(pos.x, pos.y, size.x, size.y);
  }
}