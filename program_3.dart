//program to play rock, paper , scissor with the computer
import 'dart:math';
import 'dart:io';

Random random = new Random();

int generateRandom() {
  int randomNumber = random.nextInt(3) + 1;
  return randomNumber;
}

String checkRockPaperScissor(int randomNumber) {
  int value = randomNumber;
  switch (value) {
    case 1:
      return "rock";
    case 2:
      return "paper";
    case 3:
      return "scissor";
  }
  return "";
}

void chooseWinner() {
  int counter = 0;
  while (counter < 3) {
    int randomNumber = generateRandom();
    String? computerChoice = checkRockPaperScissor(randomNumber);
    stdout.write("type either 'rock' 'paper' 'scissor: ");
    String? userChoice = stdin.readLineSync();
    if (computerChoice == userChoice) {
      print("Computer chose $computerChoice, DRAW!!");
    } else if (computerChoice == "rock" && userChoice == "scissor") {
      print("Computer chose $computerChoice, Computer WINS!!");
      counter++;
    } else if (computerChoice == "rock" && userChoice == "paper") {
      print("Computer chose $computerChoice, You WIN!!");
      counter++;
    } else if (computerChoice == "paper" && userChoice == "scissor") {
      print("Computer chose $computerChoice, You WIN!!");
      counter++;
    } else if (computerChoice == "paper" && userChoice == "rock") {
      print("Computer chose $computerChoice, Computer WINS!!");
      counter++;
    } else if (computerChoice == "scissor" && userChoice == "rock") {
      print("Computer chose $computerChoice, You WIN!!");
      counter++;
    } else if (computerChoice == "scissor" && userChoice == "paper") {
      print("Computer chose $computerChoice, Computer WINS!!");
      counter++;
    } else {
      print("Invalid choice! Please choose rock, paper, or scissor.");
      counter++;
    }
  }
  if (counter == 3) {
    print("Game over!");
  }
}

void main() {
  chooseWinner();
}
