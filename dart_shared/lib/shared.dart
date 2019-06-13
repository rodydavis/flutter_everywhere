library dart_shared;

export 'src/index.dart';

class DartShared {
  DartShared._();

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
