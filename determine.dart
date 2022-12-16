import 'dart:io';

void main(List<String> args) {
  stdout.write("Please Give us a Number: ");
  int chosenNumber = int.parse(stdin.readLineSync() as String);

  checkPrime(chosenNumber);

}

void checkPrime(int number)
{
  List<int> a = [for (var i=1; i <=number; i++)if (number%i==0)i];

  a.length == 2
  ? print("The chosen number is a prime")
  : print("the chosen Number is not a prime");
}