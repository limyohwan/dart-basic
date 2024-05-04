void main() {
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수','제니','리사','로제']
  );

  print(blackPink.name);
  print(blackPink.members);

  blackPink.sayHello();
  blackPink.introduce();
  
  print(blackPink.firstMember);
  blackPink.firstMember = '요환';
  print(blackPink.members);

  Idol blackPink2 = Idol(
    '블랙핑크',
    ['지수','제니','리사','로제']
  );

  print(blackPink == blackPink2);

  Idol blackPink3 = const Idol(
    '블랙핑크',
    ['지수','제니','리사','로제']
  );

  Idol blackPink4 = const Idol(
    '블랙핑크',
    ['지수','제니','리사','로제']
  );

  print(blackPink3 == blackPink4); // const로 선언시 같은 인스턴스로 취급함

  // Idol blackPink2 = const Idol(
  //   DateTime.now().toString(), // const 이기 때문에 불가능
  //   ['지수','제니','리사','로제']
  // ); 

  Idol bts = Idol(
    'BTS', 
    ['RM','JIN','SUGA','JHOPE','JIMIN','JUNGKOOK','V']
  );

  print(bts.name);
  print(bts.members);

  bts.sayHello();
  bts.introduce();

  print(bts.firstMember);

  Idol bts2 = Idol.fromList([
    ['RM','JIN','SUGA','JHOPE','JIMIN','JUNGKOOK','V'],
    'BTS'
  ]);

  print(bts2.name);
  print(bts2.members);

  bts2.sayHello();
  bts2.introduce();

}

// IDOL
// name
// members
// sayHello
// introduce
// constructor
// immutable
// getter, setter
class Idol {
  final String name; // immutable keyword = final
  final List<String> members;

  const Idol(this.name, this.members); // 밑의 코드를 간략하게 변경, const를 붙이면 객체를 생성할 때 const로 선언할 수 있음(생성자에 값 대입시 빌드시점에 값을 알 수 있는 경우만 선언 가능)
  // Idol(String name, List<String> members)
  //   : this.name = name, 
  //     this.members = members;

  Idol.fromList(List values)
    : this.members = values[0], this.name = values[1]; // named constructor

  void sayHello() {
    print('안녕하세요 $name입니다.');
  }

  void introduce() {
    print('저희 멤버는 $members가 있습니다');
  }

  //getter
  String get firstMember{
    return this.members[0];
  }

  //setter 무조건 하나의 값만 파라미터로 받을 수 있음
  set firstMember(String name){
    this.members[0] = name;
  }
}