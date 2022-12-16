import 'dart:io';

void main(List<String> args) {
  stdout.write("Please choose a number: ");
  var number = int.parse(stdin.readLineSync() as String);
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
  print([
    for (var i = 1; i <= number; i++)
      if (number % i == 0) i
  ]);
}