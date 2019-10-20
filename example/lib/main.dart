import 'package:data_classes/data_classes.dart';
import 'package:example/types.dart' as ty;

part 'main.g.dart';

void main() {
  var freshApple = Fruit(type: 'apple', color: 'green', baz: List<String>());
  var someApple = freshApple.copy((fruit) => fruit..color = null);
  var kiwi = someApple.copy((fruit) => fruit
    ..type = 'Kiwi'
    ..color = 'brown');
  print(kiwi);
}

/// A fruit with a doc comment.
@GenerateDataClassFor(generateCopyWith: true)
class MutableFruit {
  String type;

  String color;

  List<String> baz;

  ty.T t;

  int foo() {
    return baz.length + type.length;
  }
}
