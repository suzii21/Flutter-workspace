// Create Below Patterns:
//    1
//    2 3
//    4 5 6
//    7 8 9 10
//    11 12 13 14 15

import 'dart:io';

void main()
{
  print("Please Enter Number to Print a Pattern");
  int num ,n1=1;
  num = int.parse(stdin.readLineSync().toString());
  for(int i=1;i<=num;i++)
  {
    for (int j = 1; j <= i; j++)
    {
      stdout.write('$n1 ');
      n1++;
    }
    print("");
  }
}