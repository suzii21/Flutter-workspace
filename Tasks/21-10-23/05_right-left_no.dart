//          1
//        2 1
//      3 2 1
//    4 3 2 1
//  5 4 3 2 1

import 'dart:io';

void main()
{
  print("Please Enter Number");
  int num ;
  num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++)
  {
    for(int k=0;k!=(num-i);k++)
    {
      stdout.write('  ');
    }
    for(int j=i;j>=1;j--)
    {
      stdout.write("$j ");
    }
    print("");
  }
}