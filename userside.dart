import 'dart:io';

void main(List<String> args) {
  // String name;
  print('enter any name:=');
  String name = stdin.readLineSync() as String;
  print('Your name is: $name');

}