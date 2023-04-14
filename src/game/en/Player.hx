package en;

using LayerAdder;
class Player extends node.CharacterBody {
 
  public function new(?parent : h2d.Object, x:Int, y:Int) {
    super(x, y);
    
    debugDraw = true;
    setPixelSize(24, 30);
    
    this.addToLayer(parent, 10);
  }

  override function update( dt : Float ) {
    super.update(dt);
    dx = 0;
    if(hxd.Key.isDown(hxd.Key.LEFT)) {
      dx -= 10;
    }
    if(hxd.Key.isDown(hxd.Key.RIGHT)) {
      dx += 10;
    }
    if( hxd.Key.isPressed(hxd.Key.UP)) {
      dy = -6;
    }
    dy += dt * 20;
  }
}
