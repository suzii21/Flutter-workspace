//          *
//        * *
//      * * *
//    * * * *
//  * * * * *

import 'dart:io';

void main()
{
  print("Please Enter Number");
  int num ;
  num = int.parse(stdin.readLineSync().toString());
  for (int i = num; i >= 1; i--)
  {
    for (int j = 1; j < i; j++) 
    {
      stdout.write("  ");
    }
    for (int j = 0; j <= num- i; j++) 
    {
      stdout.write("* ");
    }
    print(" ");
  }
}
