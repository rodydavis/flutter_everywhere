import 'package:flutter/material.dart';
import 'package:flutter_shared/shared.dart';

class CounterState extends ChangeNotifier {
  int _counterValue = 0;
  int get counterValue => _counterValue;

  void increment() {
    _counterValue = DartShared.incrementValue(_counterValue);
    notifyListeners();
  }

  void decrement() {
    _counterValue = DartShared.decrementValue(_counterValue);
    notifyListeners();
  }

  void init() {
    _counterValue = 0;
    notifyListeners();
  }
}
