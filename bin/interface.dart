void main() {
  BoyGroup bts = BoyGroup('bts');
  GirlGroup blackPink = GirlGroup('blackPink');

  bts.sayName();
  blackPink.sayName();

  print(bts is IdolInterface);
  print(bts is BoyGroup);
  print(bts is GirlGroup);

  print(blackPink is IdolInterface);
  print(blackPink is BoyGroup);
  print(blackPink is GirlGroup);
}

// interface = 클래스 선언과 같음
// abstract = 인스턴스화 못하게 막음
abstract class IdolInterface {
  String name;

  IdolInterface(this.name);

  // void sayName() {}
  void sayName(); // abstract를 사용하면 함수의 바디를 지워도 됨
}

class BoyGroup implements IdolInterface {
  @override
  String name;

  BoyGroup(this.name);

  @override
  void sayName() {
    // TODO: implement sayName
    print('제 이름은 $name입니다.');
  }
}

class GirlGroup implements IdolInterface {
  @override
  String name;

  GirlGroup(this.name);

  @override
  void sayName() {
    // TODO: implement sayName
    print('제 이름은 $name입니다.');
  }

}