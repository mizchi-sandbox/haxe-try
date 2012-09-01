package;
import js.Node;

// 型アノテーション
typedef App = {
  function listen(port:Int):Void;
  function get(pattern:String, action:Dynamic ): Void;
}

typedef Response = {
  function send(message:String):Void;
  function render(template:String):Void;
}

class Router {
  public static function index(request, response:Response) :Void {
    response.send("hello hexe express");
  }
}

class Main {
  static function main() {
    var express: Dynamic = Node.require("express");
    var app:App = express();

    app.listen(3000);
    app.get('/', Router.index);

    trace (express.version);
    trace ('server: 3000');
  }
}
