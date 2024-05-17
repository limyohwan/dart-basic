void main() {
  final result = nameAndAge({
    'name' : '민지',
    'age' : 20
  });

  print(result);
  print(result.$1);
  print(result.$2);

  final result3 = getNewJeansWithType();

  for(final item in result3) {
    print(item.$1);
    print(item.$2);
  }

  final result4 = getNewJeansWithType2();

  for(final item in result4) {
    print(item.$1);
    print(item.$2);
  }

  final result5 = getNewJeansWithType3();

  for(final item in result5) {
    print(item.name);
    print(item.age);
  }

  final result6 = getMinji();

  print(result6);
}

// Record = 타입과 타입의 순서를 보장받을 수 있음, Map과 비슷함
(String, int) nameAndAge(Map<String, dynamic> json) {
  return (json['name'] as String, json['age'] as int);
}

List<(String, int)> getNewJeansWithType() {
  return [
    (
      '민지',
      20
    ),
    (
      '해린',
      18
    )
  ];
}

List<(String name, int age)> getNewJeansWithType2() { // 이름을 정해 줄 수 있음
  return [
    (
      '민지',
      20
    ),
    (
      '해린',
      18
    )
  ];
}

List<({String name, int age})> getNewJeansWithType3() { // named parameter
  return [
    (
      name : '민지',
      age : 20
    ),
    (
      name : '해린',
      age : 18
    )
  ];
}

List<Map<String, dynamic>> getNewJeans() {
  return [
    {
      'name' : '민지',
      'age' : 20
    },
    {
      'name' : '해린',
      'age' : 18
    }
  ];
}

(String, String, int) getMinji() {
  return ('민지', '뉴진스', 19);
}