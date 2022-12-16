import 'dart:io';

void main(List<String> args) {
  stdout.write("How many Fibonacci Numbers do you Want?");
  int chosenNumber = int.parse(stdin.readLineSync() as String);

  List<int> result = fibonacciNumbers
  (chosenNumber);
  print(result);
}

List<int> fibonacciNumbers(int chosenNumber) {
  List<int> fiboList = [1, 1];
  for (var i = 0; i < chosenNumber; i++) {
    fiboList.add(fiboList[i] + fiboList[i + 1]);
  }
  return fiboList;
}
