package scenes;

class TestScene extends GameScene {
  
  public function new() {
    super();

    new en.TestObj(this);
    new en.Player(this, 1, 1);
  }

  override function update(dt : Float) {
    super.update(dt);
  }
}
