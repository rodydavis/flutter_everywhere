library shared_core;

export 'src/index.dart';

class Shared {
  Shared._();

  static bool testMethod() {
    return true;
  }

  static int incrementValue(int value) {
    return value + 1;
  }

  static int decrementValue(int value) {
    return value - 1;
  }
}
