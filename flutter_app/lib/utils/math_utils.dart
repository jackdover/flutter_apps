import 'dart:math' as Math;

class MathUtils {
  static int randomInt(int maxInt) {
    return Math.Random().nextInt(maxInt);
  }
}
