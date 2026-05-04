import 'coins.dart';

void main() {
  var a = CoinStack([1, 2, 5]);
  var b = CoinStack([2]);

  print(a.total());

  print(a.isGreaterThan(b));

  var c = a.add(b);
  print(c.coinStack);

  var d = a.subtract(b);
  print(d?.coinStack);

  var e = a.subtract(CoinStack([10]));
  print(e);
}