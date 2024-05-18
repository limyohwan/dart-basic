void main() {

}

// final로 클래스를 선언하면
// extends, implement, 또는 mixin으로 사용이 불가능하다. -> 같은 파일에서는 가능함
final class Person {
  final String name;
  final int age;

  Person({required this.name, required this.age});
}

final class Idol extends Person{
  Idol({required super.name, required super.age});
}

// base로 선언하면 extend는 가능하지만 implement는 불가능함.
// base, sealed, final로 선언된 클래스만 extend가 가능하다. -> 같은 파일에서는 가능함
base class Person2 {
  final String name;
  final int age;

  Person2({required this.name, required this.age});
}

base class Idol2 extends Person2{
  Idol2({required super.name, required super.age});
}

// interface로 선언하면 implement만 가능함. -> 같은 파일에서는 가능함
interface class Person3 {
  final String name;
  final int age;

  Person3({required this.name, required this.age});
}

class Idol3 implements Person3 {
  @override
  // TODO: implement age
  int get age => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();
}

// sealed 클래스는 abstract이면서 final임
// 그리고 패턴 매칭을 사용할 수 있도록 해줌
sealed class Person4 {}

class Idol4 extends Person4 {}

class Engineer extends Person4 {}

class Chef extends Person4 {} // 추가가 되면 기존 스위치문에 에러가 발생함, The type 'Person4' is not exhaustively matched by the switch cases since it doesn't match 'Chef()'. Try adding a wildcard pattern or cases that match 'Chef()'
// 글서 default를 추가하던가 해당 클래스도 switch문안에 추가해 주어야함
String whoIsHe(Person4 person) => switch(person) {
  Idol4 i => '아이돌',
  Engineer e => '엠지니어',
  Chef c => '요리사',
  _ => '나머지'
};

// mixin 클래스
// 1) mixin은 extends나 with를 사용할 수 없다. 그렇기 때문에 mixin class도 마찬가지로 사용 불가능함.
// 2) 클래스는 on 키워드를 사용할 수 없다. 그렇기 때문에 mixin class도 on 키워드를 사용할 수 없음.
mixin class AnimalMixin {
  String bark() {
    return '멍멍';
  }
}

class Dog with AnimalMixin {}