import 'dart:io';

void main(List<String> args) {
  stdout.write('please give  a word:');
  String? input = stdin.readLineSync()?.toLowerCase();
  String? revInput = input?.split('').reversed.join('');

  input == revInput
    ? print('The word is a palindrome')
    : print('The Word is not palindrome');  
}