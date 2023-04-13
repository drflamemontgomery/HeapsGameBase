package;

class Updater {
  
  public static function update(o : h2d.Object, dt : Float) {
    for(c in @:privateAccess o.children) {
      update(c, dt);

      var c_update = Reflect.field(c, "update");
      if(c_update == null || !Reflect.isFunction(c_update)) continue;
      c_update(dt);
    }
  } 

  public static function physicsUpdate(o : h2d.Object, dt : Float) {
    for(c in @:privateAccess o.children) {
      physicsUpdate(c, dt);

      var c_physicsUpdate = Reflect.field(c, "physicsUpdate");
      if(c_physicsUpdate == null || !Reflect.isFunction(c_physicsUpdate)) continue;
      c_physicsUpdate(dt);
    }
  } 

}
