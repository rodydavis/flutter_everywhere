import 'package:flutter/material.dart';
import 'package:shared_core/shared.dart';

class CounterState extends ChangeNotifier {
  int _counterValue = 0;
  int get counterValue => _counterValue;

  void increment() {
    _counterValue = Shared.incrementValue(_counterValue);
    notifyListeners();
  }

  void decrement() {
    _counterValue = Shared.decrementValue(_counterValue);
    notifyListeners();
  }

  void init() {
    _counterValue = 0;
    notifyListeners();
  }
}
