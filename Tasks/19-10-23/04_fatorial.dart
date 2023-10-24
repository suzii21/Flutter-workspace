//write a program you have to find the factorial of given number.

void main()
{
  int num = 5,fact = 1;
  // Formula to Calculate Factorial : n! = n × (n - 1)!

  for(int i=1;i<=num;i++)
  {
    fact = fact * i ;
  }
  print('\nThe Factorial of given Number is $fact');
  
}