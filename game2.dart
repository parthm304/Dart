import 'dart:io';
import 'dart:math';

void main(List<String> args) {
   print('Type exit to the game');
   guessingGame();
}

guessingGame() {
  final randon = Random();
  int randomNumber = randon.nextInt(100);
  int attempt = 0;

  while(true)
  {
    attempt += 1;
    stdout.write("Please choose a number between  0 to 100: ");
    String chosenNumber = stdin.readLineSync() as String;

    // Make sure sure does not go out of limits
    if(chosenNumber.toLowerCase()=="exit")
    {
      print('\n\t\t\tBye');
      break;
    } 
    else if (int.parse(chosenNumber)>100)
    {
      print('Please do not go over 100');
      continue;
    }
    // Main logic
    if(int.parse(chosenNumber) == randomNumber)
    {
      print('Bingo! You tried $attempt times\n');
      continue;
    }
    else if (int.parse(chosenNumber)>randomNumber)
    {
      print('You are Higher');
      continue;
    }
    else
    {
      print('You are Higher');
      continue;
    }
  }
}