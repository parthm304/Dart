import 'dart:io';

void main(List<String> args) {
  stdout.write("hi please choose a Number");
  // int number = int.parse(stdin.readLineSync() as String);
  var number = int.parse(stdin.readLineSync() as String);
  // int number =  int.parse(stdin.readLineSync());

  if (number % 2 == 0) {
    print('Chosen number is even');
  }
  else
  {
    print('Chosen number is odd');
  }

}