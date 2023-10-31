// Write a program to find the Max number from the given three
// number using Nested If

void main()
{
  int a=10;
  int b=15;
  int c=20;
  if (a >= b && a >= c)
  {
    print(" $a is largest number compared to $b&$c");
  }
  else if (b >= a && b >= c)
  {
    print("$b is largest number compared to $a&$c");
  }
  else
  {
    print("$c is largest number compared to $a & $b");
  }
}