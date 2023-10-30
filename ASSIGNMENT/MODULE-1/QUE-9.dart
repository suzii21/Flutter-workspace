

void main()
{
  int num1 = 10;
  int num2 = 20;

  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2;

  print('After swapping');
  print('num1 = $num1');
  print('num2 = $num2');
}