//       *
//      * *
//     * * *
//    * * * *
//   * * * * *

import 'dart:io';

void main()
{
  print("Please Enter Number");
  int num;
  num = int.parse(stdin.readLineSync().toString());

  for (int i = 1; i <= num; i++)
  {
    for (int k = 0; k != (num - i); k++)
    {
      stdout.write("  ");
    }
    for (int j = 1; j <= i; j++)
    {
      stdout.write("* ");
    }
    for (int m = 2; m <= i; m++)
    {
      stdout.write("* ");
    }
    print(" ");
  }

}