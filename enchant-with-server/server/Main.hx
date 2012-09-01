package;
import js.Node;

class Main {
  static function main() {
    var express: Dynamic = Node.require("express");
    var app = express();
    app.use(express.static_(Node.__dirname + '/public'));
    app.listen(3000);
    trace('server: 3000');
  }
}
