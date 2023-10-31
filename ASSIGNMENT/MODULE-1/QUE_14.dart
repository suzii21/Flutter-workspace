// 14. Write a program to find the Max number from the given three number using Ternary Operator

void main()
{
  int a = 5 ,b = 50 ,c = 20 ,max;
  max = (a>=b && a>=c) ? a :(b>=c) ? b : c;
  print("From number a ,b and c max Number is: $max.");
}