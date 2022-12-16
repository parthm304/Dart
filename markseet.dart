import 'dart:io';

void main(List<String> args) {
  print('Enter Your Name:-');
  String name = stdin.readLineSync() as String;

  print('Enter Your Roll Number:-');
  var rn = stdin.readLineSync() as String;

  print('your Name Is:= $name');
  print('Your Roll Number Is:= $rn');

  print('Enter Marks in Scince');
  int sc = int.parse(stdin.readLineSync() as String);

  print('Enter Marks in Maths');
  int ms = int.parse(stdin.readLineSync() as String);

  print('Enter Marks in English');
  int en = int.parse(stdin.readLineSync() as String);

  print('Enter Marks in SansKrut');
  int sk = int.parse(stdin.readLineSync() as String);

  var total = sc + ms + en + sk;

  print('Your Name Is:$name');
  print('Your Roll Number  Is:$rn');
  print('Your Scince Marks Is:$sc');
  print('Your Maths Marks Is:$ms');
  print('Your English Marks Is:$en');
  print('Your Sasnkrut Marks Is:$sk');

  if (400 < total) {
    print('Faile');
  } else {
    print('Pass');
  }

  if (total > 400) {
    print('Grade A');
  } else if (total > 350) {
    print('Grade B');
  } else if (total > 300) {
    print('Grade C');
  } else if (total > 250) {
    print('Grade D');
  } else if (total > 200) {
    print('Grade E');
  } else if (total > 100) {
    print('Grade F');
  }
}
