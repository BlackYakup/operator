class CoinStack {
  final List<int> coinStack;

  CoinStack(List<int> coinStack) : coinStack = List.unmodifiable(coinStack);

  int get _value {
    int sum = 0;

    for (int c in coinStack) {
      sum = sum + c;
    }

    return sum;
  }

  bool operator >(CoinStack other) {
    return _value > other._value;
  }

  bool operator <(CoinStack other) {
    return _value < other._value;
  }

  bool operator >=(CoinStack other) {
    return _value >= other._value;
  }

  bool operator <=(CoinStack other) {
    return _value <= other._value;
  }

  @override
  bool operator ==(Object other) {
    return other is CoinStack && _value == other._value;
  }

  @override
  int get hashCode {
    return _value.hashCode;
  }

  CoinStack operator +(CoinStack other) {
    return CoinStack([...coinStack, ...other.coinStack]);
  }

  CoinStack? operator -(CoinStack other) {
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

  @override
  String toString() {
    return coinStack.toString();
  }
}
