package;
import js.Dom;
import js.Lib;

class Test {
  static function main() {
    trace("Hello World !");
  	var arr = [5,1,2,8,3];
  	var sorted: Array<Int> = qsort(arr);
    writeToDom(sorted.toString());
  }

  static function qsort(array: Array<Int>): Array<Int> {
  	if(array.length == 0)
  	  return [];
    var pivot = array.shift();
  	var b = [], a = [];
  	for(i in array)
  	  if(i < pivot)
  	  	b.push(i);
  	  else
  	  	a.push(i);
  	return qsort(b).concat([pivot]).concat(qsort(a));
  }

  static function writeToDom (text: String) {
    var div:HtmlDom = Lib.document.createElement ("div");
    div.innerHTML = text;
    Lib.document.body.appendChild (div);
  }
}
