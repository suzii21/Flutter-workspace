//Write a program to print the number in reverse order.

void main()
{
  int number = 12345;
  String numberStr = number.toString();
  String reversedNumberStr = '';

  for (int i = numberStr.length - 1; i >= 0; i--)
  {
    reversedNumberStr += numberStr[i];
  }

  int reversedNumber = int.parse(reversedNumberStr);
  print('Reversed Number: $reversedNumber');
}