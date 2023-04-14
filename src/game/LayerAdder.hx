package;

class LayerAdder {
  public static function addToLayer(obj : h2d.Object, ?p : h2d.Object, layer : Int, index : Int = -1) {
    if(p == null) return;

    var layers = Std.downcast(p, h2d.Layers);
    if(layers == null) p.addChildAt(obj, index);
    else layers.add(obj, layer, index);
  } 
}
