void main() {
  Employee seulgi = Employee('슬기');
  Employee chorong = Employee('초롱');

  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.building = '오투타워';
  
  seulgi.printNameAndBuilding();
  chorong.printNameAndBuilding();

  Employee.printBuilding();
}

class Employee {
  // static은 인스턴스에 귀속되지 않고 클래스에 귀속된다.
  static String? building;
  final String name;

  Employee(this.name);

  void printNameAndBuilding() {
    print('$name 입니다. $building 건물에서 근무중입니다.');
  }

  static void printBuilding() {
    print('$building 건물에서 근무중입니다.');
  }
}