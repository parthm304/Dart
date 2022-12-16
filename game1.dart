import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Welcome to Stone, Paper, Scissors\nType 'exit' to stop the game");
  final random = Random();

  // Rules of the game
  Map<String, String> rules = {
    "stone": "scissors",
    "scissors": "paper",
    "paper": "stone"
  };

  // Intial score
  int user = 0;
  int comp = 0;

  // Options for the computer to choose
  List<String> options = ["stone", "scissors", "paper"];

  // Actual game
  while (true) {
    String compChoice = options[random.nextInt(options.length)];
    stdout.write("\n Please  choose Stone, Paper or Scissosrs: ");
    String userChoice = stdin.readLineSync()!.toLowerCase();
    if (userChoice == 'exit') {
      print('\nYou: $user Computer: $comp\n\t\tBye Bye!');
      break;
    }
    if (!options.contains(userChoice)) {
      print('Incorrect choise ');
      continue;
    } else if (compChoice == userChoice) {
      print('We have a tie!');
    } else if (rules[compChoice] == userChoice) {
      print('Computer Wins: $compChoice vs $userChoice');
      comp += 1;
    } else if (rules[userChoice] == compChoice) {
      print('You Win: $userChoice vs $compChoice');
      user += 1;
    }
  }
}
