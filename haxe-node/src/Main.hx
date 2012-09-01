package;
import js.Node;
import Express;

class Router {
  public static function index(request:Request, response:Response):Void {
    response.send("hello hexe express");
  }
}

class Main {
  static function main() {
    var app = createServer();

    app.listen(3000);
    app.get('/', Router.index);
    trace ('server: 3000');
  }
  static function createServer(): Application {
    var express: Dynamic = Node.require("express");
    return express();
  }
}
