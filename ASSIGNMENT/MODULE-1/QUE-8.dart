//Write a program to calculate sum of 5 subjects & find the percentage. Subject marks
//entered by user.


void main()
{
  int eng = 75 ,phy= 80, chem = 80, math = 85, comp = 90;
  int  sum_of_subjects = eng + phy + chem + math + comp;
  double percentage = sum_of_subjects/5;
  print('Sum of subjects is $sum_of_subjects');
  print('Percentage is $percentage');
}