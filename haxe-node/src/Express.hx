package;

// 型アノテーション
typedef Application = {
  function listen(port:Int):Void;
  function get(pattern:String, action:Dynamic ): Void;
}

typedef Response = {
  function send(message:String):Void;
  function render(template:String):Void;
}
typedef Request = {
  var params: Dynamic;
  var query : Dynamic;
}
