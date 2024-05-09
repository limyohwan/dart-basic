void main() {
  Lecture<String> lecture1 = Lecture('123', 'lecture1');
  lecture1.printIdType();

  Lecture<int> lecture2 = Lecture(1234, 'lecture2');
  lecture2.printIdType();
}

// generic - 타입을 외부에서 받을때 사용
class Lecture<T> {
  final T id;
  final String name;

  Lecture(this.id, this.name);

  void printIdType() {
    print(id.runtimeType);
  }
}

// 객체지향 프로그래밍
// 모든 클래스는 Object를 상속하고 있음
class Test extends Object {}