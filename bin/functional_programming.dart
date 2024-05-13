void main() {
  List<String> blackPink = ['rose', 'jisoo', 'lisa', 'jenny'];

  print(blackPink);
  print(blackPink.asMap());
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys.toList());  // Iterable -> List
  print(blackPinkMap.values); // Iterable

  Set blackPinkSet = Set.from(blackPink);

  print(blackPinkSet.toList());

  final newBlackPink = blackPink.map((e){
    return 'blackpink $e';
  });

  print(newBlackPink.toList());

  final newBlackPink2 = blackPink.map((e) => 'balckpink $e');

  print(newBlackPink2.toList());
  
  print(blackPink == blackPink);
  print(newBlackPink == blackPink);
  print(newBlackPink == newBlackPink2);

  String number = '13579';

  final parsed = number.split('').map((e) => '$e.jpg').toList();

  print(parsed);

  Map<String, String> harryPorter = {
    'Harry Potter' : '해리포터',
    'Ron Weasley' : '론 위즐리',
    'Hermione Granger' : '헤르미온느 그레인저'
  };

  final result = harryPorter.map((key, value) => MapEntry('Harry Potter Character $key', '해리포터 캐릭터 $value'));
  
  print(harryPorter);
  print(result);

  final keys = harryPorter.keys.map((e) => 'Harry Potter Character $e').toList();
  final values = harryPorter.values.map((e) => '해리포터 캐릭터 $e').toList();
  
  print(keys);
  print(values);

  Set blackPinkSet2 = {
    'rose',
    'jisoo',
    'jenny',
    'lisa'
  };

  final newSet = blackPinkSet2.map((e) => 'blackpink $e').toSet();

  print(newSet);

  List<Map<String, String>> people = [
    {
      'name' : 'rose',
      'group' : 'blackpink'
    },
    {
      'name' : 'jisoo',
      'group' : 'blackpink'
    },
    {
      'name' : 'rm',
      'group' : 'bts'
    },
    {
      'name' : 'v',
      'group' : 'bts'
    }
  ];

  print(people);

  final blackpink = people.where((element) => element['group'] == 'blackpink');

  print(blackpink);

  List<int> numbers = [
    1,
    3,
    5,
    7,
    9
  ];

  final result2 = numbers.reduce((total, value){
    print('value : $total   element : $value');
    return total + value;
  });

  print(result2);

  List<String> words = [
    '안녕하세요',
    '저는',
    '임요환입니다.'
  ];

  final sentence = words.reduce((value, element) => '$value $element');
  
  print(sentence);

  // words.reduce((value, element) => value.length + element.length); // 같은 타입이여야만 함 -> fold를 사용하여 해결

  final sum = numbers.fold<int>(0, (previousValue, element) => previousValue + element);
  print(sum);

  final sentence2 = words.fold<String>('', (previousValue, element) => previousValue + element);
  print(sentence2);

  final count = words.fold<int>(0, (previousValue, element) => previousValue + element.length);
  print(count);

  List<int> even = [2,4,6,8];
  List<int> odd = [1,3,5,7];

  print([even, odd]); // 리스트 안에 리스트
  print([...even, ...odd]); // 하나의 리스트로 합쳐짐, cascade 연산자

  print(people);
  
  final parsedPeople = people.map((e) => Person(name : e['name']!, group : e['group']!)).toList();
  print(parsedPeople);

  for(Person person in parsedPeople) {
    print(person.name);
    print(person.group);
  }

  final bts = parsedPeople.where((element) => element.group == 'bts');
  print(bts);

  final result3 = people
    .map((e) => Person(name : e['name']!, group : e['group']!))
    .where((element) => element.group == 'bts')
    .fold<int>(0, (previousValue, element) => previousValue + element.name.length);
  print(result3);

  // functional programming은 코드를 간결하게 하지만 너무 많이 하게되면 오히려 가독성이 떨어지게 됨
}

class Person {
  final String name;
  final String group;

  Person({required this.name, required this.group});

  @override
  String toString() {
    return 'Person(name:$name, group:$group)';
  }
}