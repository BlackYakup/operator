import 'coins.dart';

void main() {
  var a = CoinStack([1, 2, 5]);
  var b = CoinStack([2, 1, 0]);

  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
  print(a == b);
  print(a == CoinStack([8]));

  var c = a + b;
  print(c.coinStack);

  var d = a - b;
  if (d == null) {
    print('Die Subtraktion ist nicht möglich, da mindestens eine Münze aus b nicht in a enthalten ist.');
  } else {
    print(d.coinStack);
  }

  var e = a - CoinStack([10]);
  if (e == null) {
    print('Die Subtraktion ist nicht möglich, da mindestens eine Münze nicht im Ausgangsstapel enthalten ist.');
  } else {
    print(e.coinStack);
  }
}
