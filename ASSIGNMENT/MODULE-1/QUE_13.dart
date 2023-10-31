//Write a program to find the Max number from the given three number using Nested
//f


void main()
{
  int a = 20, b = 10, c = 15;
  print('Max number is: ${findMax(a, b, c)}');
}
int findMax(int a, int b, int c)
{
  if (a > b)
  {
    if (a > c)
    {
      return a;
    }
    else
    {
      return c;
    }
  }
  else
  {
    if (b > c)
    {
      return b;
    }
    else
    {
      return c;
    }
  }
}