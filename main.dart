import 'coins.dart';

void main() {
  var a = CoinStack([1, 2, 5]);
  var b = CoinStack([2]);

  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);
  print(a == b);
  print(a == CoinStack([8]));

  var c = a + b;
  print(c.coinStack);

  var d = a - b;
  print(d?.coinStack);

  var e = a - CoinStack([10]);
  print(e);
}
