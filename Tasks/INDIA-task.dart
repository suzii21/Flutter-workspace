/*I
  IN
  IND
  INDI
  INDIA*/

void main()
{
  String country = "INDIA";

  for (int i = 0; i < country.length; i++)
  {
    String result = " ";

    for (int j = 0; j <= i; j++)
    {
      result += country[j];
    }

    print(result);
  }
}