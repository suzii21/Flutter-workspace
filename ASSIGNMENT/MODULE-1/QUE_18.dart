// 18.Write a Program of Addition, Subtraction ,Multiplication and
// Division using Switch case.(Must Be Menu Driven)


void main()
{
  int a = 20,b = 20,ans;

  List<String> total = ['Addition','Subtraction','Multiplication','Division'];

  switch(total[2])
  {
    case 'Addition':
      ans = a + b;
      print("Answer is $ans.");
      break;
    case "Subtraction" :
      ans = a - b;
      print("Answer is $ans.");
      break;
    case "Multiplication":
      ans = a * b;
      print('Answer is $ans.');
      break;
    case "Division":
      double ans = a /b;
      print("Answer is $ans.");
      break;
    default :
      print("Please Select Any number from 0-3");
  }
}