void main()
{
  Map<String, int> ageMap =
  {
    'suzan': 20,
    'neha': 25,
    'riya': 25,
    'nishita':20,
  };

  print('suzan\'s age is ${ageMap['suzan']}');
  print('neha\'s age is ${ageMap['neha']}');

  ageMap['amrin'] = 30;

  ageMap.forEach((key, value)
  {
    print('$key is $value years old');
  });

  if (ageMap.containsKey('suzan'))
  {
    print('suzan is in the map');
  }

  ageMap.remove('nishita');

  print('Number of people in the map: ${ageMap.length}');
}