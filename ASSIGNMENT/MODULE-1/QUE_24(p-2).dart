//  1
//  1 2
//  1 2 3
//  1 2 3 4
//  1 2 3 4 5

import 'dart:io';

void main()
{
  print("Please Enter Number");
  int num ;
  num = int.parse(stdin.readLineSync().toString());

  for(int i=1;i<=num;i++)
  {
    for(int j=1;j<=i;j++)
    {
      stdout.write("$j ");
    }
    print("");
  }
}