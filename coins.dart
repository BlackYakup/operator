class CoinStack {
  List<int> coinStack;

  CoinStack(this.coinStack);

  int total() {
    int sum = 0;

    for(int c in coinStack) {
      sum = sum + c;
    }

    return sum;
  }

  bool isGreaterThan(CoinStack other) {
    return total() > other.total();
  }

  bool isLessThan(CoinStack other) {
    return total() < other.total();
  }

  CoinStack add(CoinStack other) {
    return CoinStack([...coinStack, ...other.coinStack]);
  }

  CoinStack? subtract(CoinStack other) {
    List<int> result = List.from(coinStack);

    for (int c in other.coinStack) {
      if (result.contains(c)) {
        result.remove(c);
      } else {
        return null;
      }
    }

    return CoinStack(result);
  }
}