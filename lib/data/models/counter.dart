class CounterModel {
  int _value = 0;

  int get value => _value;

  void set(int val) => _value = val;

  void reset() => _value = 0;
}
