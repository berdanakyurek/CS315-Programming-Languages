import 'dart:math';

void main() {
  int number = 30;
  int tries = 0;
  var rnd = new Random();
  var assumption;
  do {
    assumption = rnd.nextInt(100);
    print(assumption);
    tries++;
  } while (assumption != number);
  print("$tries tries.");
}
