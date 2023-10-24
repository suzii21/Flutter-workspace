// 7. Write a program to calculate sum of 5 subjects & find the percentage.
// Subject marks .

void main()
{

  int eng = 80 ,phy= 75, chem =70 , math = 77, comp = 90;

  int  sum_of_subjects = eng + phy + chem + math + comp;

  double percentage = sum_of_subjects/5;

  print('Sum of subjects is $sum_of_subjects');
  print('Percentage is $percentage');

}