import 'dart:io';

void main() {
  raj x = raj();
  x.abc();
}

class raj {
  var choice1, choice2, choice3;
  var name1, name2, pas1, pas2, name4, name5, pas3, pas5, total = 0, total1;

  List ls = [];
  List ms = [];

  void abc() {
    print(' [1] => ADMIN ');
    print(" [2] => USER ");
    stdout.write(" => ENTER YOUR CHOICE :- ");
    choice1 = int.parse(stdin.readLineSync() as String);
    switch (choice1) {
      case 1:
        admin();
        break;
      case 2:
        user();
        break;
    }
  }

  void admin() {
    print('''
  [1] => ADD PRODUCT       
  [2] => SHOW PRODUCT       
  [3] => UPDATE PRODUCT     
  [4] => REMOVE PRODUCT    
              ''');

    stdout.write("\n => ENTER YOUR choice :- ");
    choice2 = int.parse(stdin.readLineSync() as String);

    while (choice2 <= 4 || choice2 >= 1) {
      switch (choice2) {
        case 1:
          print("\n => YOUR choice IS ADD PRODUCT ");

          stdout.write("\n ~> HOW MANY PRODUCT YOU SELL :- ");
          int n = int.parse(stdin.readLineSync() as String);

          int k = 0;

          for (var i = 1; i <= n; i++) {
            k++;
            print("\n ! !  PRODUCT NUMBER = $k ! !");

            stdout.write(" \n=> Enter the product id:-");
            int id = int.parse(stdin.readLineSync() as String);

            stdout.write(" => Enter the product name:-");
            String name3 = stdin.readLineSync() as String;

            stdout.write(" => Enter the product price:-");
            int price = int.parse(stdin.readLineSync() as String);

            ls.addAll([
              {'id': id, 'name': '$name3', 'price': price}
            ]);
          }

          break;

        case 2:
          var n = 1;
          for (var i = 0; i < ls.length; i++) {
            print("\n ! ! PRODUCT = $n ! ! ");
            print(ls[i]);
            n++;
          }

          break;

        case 3:
          stdout.write('\n => enter the product numbur want you change:-');
          int i = int.parse(stdin.readLineSync() as String);

          stdout.write("\n => Enter the new product id:-");
          int id = int.parse(stdin.readLineSync() as String);

          stdout.write("\n => Enter the new product name:-");
          String name = stdin.readLineSync() as String;

          stdout.write("\n => Enter the new product price:-");
          int price = int.parse(stdin.readLineSync() as String);

          ls.replaceRange(i - 1, i, [
            {'Id': id, 'Name': '$name', 'price': price}
          ]);
          break;

        case 4:
          stdout.write('\n => enter the product numbur want you delet:-');
          int i = int.parse(stdin.readLineSync() as String);

          ls.removeAt(i - 1);

          break;
      }

      print('''
  [1] => ADD PRODUCT       
  [2] => SHOW PRODUCT       
  [3] => UPDATE PRODUCT     
  [4] => REMOVE PRODUCT    
              ''');
      print("Enter your choice : ");
      choice2 = int.parse(stdin.readLineSync() as String);
    }
    abc();
  }

  void user() {
    print("? choice ? ");
    print(''' 
           [--------------------------]
           [  [1] PURCHASE PRODUCT    ]
           [  [2] SHOW BILL           ]
           [--------------------------]
                  ''');

    stdout.write("\n => ENTER YOUR choice :- ");
    choice3 = int.parse(stdin.readLineSync() as String);
    while (choice3 == 2 || choice3 == 1) {
      switch (choice3) {
        case 1:
          print("\n* * * YOUR choice IS PURCHASE PRODUCT * * * ");

          ls.forEach((element) {
            print(element);
          });

          stdout.write("\n ~> ENTER THE PRODUCT ID :- ");
          int p2 = int.parse(stdin.readLineSync() as String);

          stdout.write("~> ENTER PRODUCT QUTY :- ");
          int p3 = int.parse(stdin.readLineSync() as String);

          for (var i = 0; i < ls.length; i++) {
            var element = ls[i];
            if (p2 == element['id']) {
              print(ls[i]);
              var g = element['price'] * p3;
              var h = ['$p2'];
              var t = ['$p3'];

              File fp = File('project2.txt');
              fp.writeAsStringSync('YOUR TOTAL BILL IS = $g');

              File fp2 = File('project3.txt');
              fp2.writeAsStringSync('YOUR PRODUCT ID IS = $h');

              File fp3 = File('project4.txt');
              fp3.writeAsStringSync('YOUR PRODUCT QUTY IS = $t');
            }
          }

          break;

        case 2:
          print("* * * YOUR choice IS SHOW BILL * * * ");

          File fp2 = File('project3.txt');
          print(fp2.readAsStringSync());

          File fp3 = File('project4.txt');
          print(fp3.readAsStringSync());

          File fp = File('project2.txt');
          print(fp.readAsStringSync());

          break;
      }

      print("YOU WANT GO MANI MENY [ ENTER 1 ]");
      print("YOU WANT CONTINU THIS MENU [ENTER 2]");
      stdout.write("ENTER KEY [ 1 / 2] :- ");
      choice3 = int.parse(stdin.readLineSync() as String);
}
}
}