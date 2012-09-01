// package;
// import js.Dom;
// import js.Lib;
// import underscore.Underscore;

// class Test {
//   static function main() {
//     trace("Hello World !");
//   	var arr = [5,1,2,8,3];
//   	var sorted: Array<Int> = qsort(arr);
//     writeToDom(sorted.toString());
//     Underscore.map(arr, function(i:Int){
//       trace(i);
//     });
//   }

//   static function qsort(array: Array<Int>): Array<Int> {
//   	if(array.length == 0)
//   	  return [];
//     var pivot = array.shift();
//   	var b = [], a = [];
//   	for(i in array)
//   	  if(i < pivot)
//   	  	b.push(i);
//   	  else
//   	  	a.push(i);
//   	return qsort(b).concat([pivot]).concat(qsort(a));
//   }

//   static function writeToDom (text: String) {
//     var div:HtmlDom = Lib.document.createElement ("div");
//     div.innerHTML = text;
//     Lib.document.body.appendChild (div);
//   }
// }
    
    
package ;

import js.Lib;
import EnchantHX;

class Bear extends HxSprite {
  public function new() {
    super(32, 32);
    x = 8;
    y = 8;
    image = Main.game.assets.get('chara1.gif');

    addEventListener(event_ENTER_FRAME, function(e) {
      // check input (from key or pad) on every frame
      if (Main.game.input.right) {
        x += 2;
      }
      if (Main.game.input.left) {
        x -= 2;
      }
      if (Main.game.input.up) {
        y -= 2;
      }
      if (Main.game.input.down) {
        y += 2;
      }
      
    });
  }
}
 
class Main extends HxGame {
  public static var game : HxGame;

  function new() {
    super(320, 320);

    fps = 24;
    preload(['chara1.gif']);
    // The images used in the game should be preloaded

    onload = function() {
      var bear = new Bear();

      // add bear to rootScene (default scene)
      rootScene.addChild(bear);

      // display d-pad
      var pad = new HxPad();
      pad.x = 0;
      pad.y = 224;
      rootScene.addChild(pad);
      rootScene.backgroundColor = '#aaaaaa';
    };
    start();
  }
  static function main() {
    game = new Main();
  }
  
}
