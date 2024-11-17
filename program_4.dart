//program to check user input is an odd number or even
import 'dart:io';

void checkInput() {
  stdout.write("Type any number: ");
  int? userChoice = stdin.readByteSync();
  if (userChoice % 2 == 0) {
    print("Even number");
  } else {
    print("Odd number");
  }
}

void main() {
  checkInput();
}
