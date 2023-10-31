// 16.Write a program user enter the 5 subjects mark. You have to make a
// total and find the percentage. percentage > 75 you have to print
// “Distinction” percentage > 60 and percentage <= 75 you have to
// print “First class” percentage >50 and percentage <= 60 you have to
// print “Second class” percentage > 35 and percentage <= 50 you have to
// print “Pass class” Otherwise print “Fail”

void main()
{
  int mathematics = 90,physics = 90,chemistry = 90 ,english = 90 ,computer = 90;
  int total_marks = mathematics + physics + chemistry + english + computer;
  double percentage = total_marks * 100 /500;
  if(percentage >= 75)
  {
    print('Distinction');
  }
  else if(percentage >= 60 && percentage <= 75)
  {
    print('First Class');
  }
  else if(percentage >=50 && percentage <=60)
  {
    print('Second Class');
  }
  else if(percentage >=50 && percentage <=60)
  {
    print('Pass Class');
  }
  else
  {
    print('Fail');
  }
}