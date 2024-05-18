void main() { 
  final minji = ('민지', 20);
  print(minji.$1);
  print(minji.$2);

  final (name, age) = ('민지', 20); // destructuring
  print(name);
  print(age);

  final newJeans = ['민지', '해린'];
  final [a, b] = newJeans;  // destructuring
  final [String aa, String bb] = newJeans;
  print(a);
  print(b);

  final numbers = [1,2,3,4,5,6,7,8];
  final [x, y, ..., z] = numbers; // ... 중간 값 소모, 리스트안에서 한번만 사용 가능
  print(x);
  print(y);
  print(z);

  final [xx, yy, ...rest, zz] = numbers; // ...에 이름을 주어 사용 가능
  print(xx);
  print(yy);
  print(zz);
  print(rest);

  final [xxx, _, yyy, ...rest2, zzz, _] = numbers; // _ 는 값을 무시함
  print(xxx);
  print(yyy);
  print(zzz);
  print(rest2);

  final minjiMap = {'name' : '민지', 'age' : 19};
  final {'name': name2, 'age': age2} = minjiMap;

  print(name2);
  print(age2);

  final minjiIdol = Idol(name: '민지', age: 19);
  final Idol(name: name3, age: age3) = minjiIdol;
  print(name3);
  print(age3);
}

class Idol {
  final String name;
  final int age;

  Idol({required this.name, required this.age});
}

