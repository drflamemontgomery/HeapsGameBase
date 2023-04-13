package node;

import phy.shape.CircleShape;

class CircleCollider extends h2d.Object {
  
  public var collider : CircleShape;

  public function new(x : Float, y : Float, radius : Float, ?parent : GameObject) {
    super(parent);

    collider = new CircleShape(x, y, radius);
  } 

  public function physicsUpdate(dt : Float) {
    var p = localToGlobal();
    collider.x = p.x/GRID;
    collider.y = p.y/GRID;
  }
}
