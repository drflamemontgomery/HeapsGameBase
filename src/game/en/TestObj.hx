package en;

using LayerAdder;
class TestObj extends h2d.Object {

  var image : h2d.Bitmap;
  var spr : node.Sprite;

  public function new( ?parent : h2d.Object ) {
    super();

    var t = h2d.Tile.fromColor(0x00FF00, 32, 64, 1.);
    t.setCenterRatio(0.5, 1.0);
    spr = new node.Sprite(this);
    spr.setTile(t);
    spr.scaleX = 0.5;
    spr.scaleY = 1.5;
    spr.y = 32;

    this.x = 100;
    this.y = 100;
    this.rotation = 0.79;
    
    this.addToLayer(parent, 20);
  }
  
  var t : Float = 0.0;

  public function update( dt : Float ) {
    t += dt*5;
    spr.scaleX = Math.sin(t)*0.25 + 0.75; 
    spr.scaleY = 1.25 - Math.sin(t)*0.25;
    this.rotation += dt;
  }
}
