void main() {
  print('hello world');
  
  // variable
  var name = '임요환';
  print(name);
  
  var name2 = "레드벨벳";
  print(name2);

  name = '플러터 프로그래밍';
  print(name);

  // var name = "임요환2"; // 똑같은 변수 사용은 불가

  //정수 integer
  int number1 = 10;
  print(number1);

  int number2 = 15;
  print(number2);

  int number3 = -20;
  print(number3);

  int number4 = 2;
  int number5 = 4;

  print(number4 + number5);
  print(number4 - number5);
  print(number4 / number5);
  print(number4 * number5);

  //실수 double
  double double1 = 2.5;
  double double2 = 0.5;

  print(double1 + double2);
  print(double1 - double2);
  print(double1 / double2);
  print(double1 * double2);

  //맞다 / 틀리다 Boolean
  bool isTrue = true;
  bool isFalse = false;

  print(isTrue);
  print(isFalse);

  // 글자 타입 String
  String string1 = '레드벨벳';
  String string2 = '임요환';
  
  print(string1);
  print(string2);
  print(string1 + string2);
  print(string1 + ' ' + string2);
  print('${string1.runtimeType} ${string2}');
  print('$string1 $string2'); // 변수만 쓰는 경우 생략가능

  // var -> 값을 가지고 타입을 유추함 = 직접 명시하는 것이 좋음
  var var1 = '블랙핑크';
  var var2 = 20;

  print(var1.runtimeType);
  print(var2.runtimeType);

  // 밑처럼 복잡한 경우 var 사용
  Map<String, Map<int, List<double>>> testType = {};
  var testType2 = {};

  // dynamic
  dynamic dynamic1 = '임요환';
  print(dynamic1);

  dynamic dynamic2 = 1;
  print(dynamic2);

  var var3 = '블랙핑크';
  print(var3);

  print(dynamic1.runtimeType);
  print(var3.runtimeType);

  dynamic1 = 2; // 타입 변경 가능
  // var3 = 5; // 한번 선언한 타입으로 고정됨, 타입을 변경할 수 없음

  // nullable - null이 될 수 있다.
  // non-nullable - null이 될 수 없다.
  // null - 아무런 값도 있지 않다.
  String test = '임요환';
  
  print(test);

  // test = null; // null 불가능

  String? test2 = '임요환';
  
  print(test2);

  test2 = null; // ?를 사용하면 null 가능

  print(test!); // !는 null이 아니다라는 의미

  // final
  final String final1 = '임요환';
  final final2 = '임요환2'; // 타입 생략가능, var 기능까지 함
  
  print(final1);

  // final1 = '블랙핑크'; // 변수의 값 변경 불가능

  // const
  const String const1 = '블랙핑크';
  const const2 = '블랙핑크2'; // 타입 생략가능, var 기능까지 함

  print(const1);

  // const1 = '임요환'; // 변수의 값 변경 불가능

  final DateTime now = DateTime.now(); // final은 빌드 타임의 값을 알고 있지 않아도 됨

  print(now);

  // const DateTime now2 = DateTime.now(); // const는 불가능, const 같은 경우 빌드 타임의 값을 알고 있어야 됨 -> 코드를 작성하는 순간에 그 값을 알 수 있어야 됨

  // print(now2);

  int number6 = 2;

  print(number6);
  print(number6 + 2);
  print(number6 - 2);
  print(number6 * 2);
  print(number6 / 2);
  print('-------------------');
  print(number6 % 2);
  print(number6 % 3);
  print(number6);
  print('-------------------');
  number6++;
  print(number6);
  number6--;
  print(number6);

  double double3 = 4.0;

  print(double3);
  double3 += 1;
  print(double3);
  double3 -= 1;
  print(double3);
  double3 *= 1;
  print(double3);
  double3 /= 1;
  print(double3);
  
  double? double4 = 4.0;
  print(double4);

  double4 = 2.0;
  print(double4);

  double4 = null;
  print(double4);

  double4 ??= 3.0; // ??= 는 double4가 null이면 해당 값으로 변경해라라는 오퍼레이터
  print(double4);

  int number7 = 1;
  int number8 = 2;

  print(number7 > number8);
  print(number7 < number8);
  print(number7 >= number8);
  print(number7 <= number8);
  print(number7 == number8);
  print(number7 != number8);

  int number9 = 1;

  print(number9 is int);
  print(number9 is String);
  print(number9 is! int);
  print(number9 is! String);

  // && - and 조건
  // || - or 조건
  bool result = 12 > 10 && 1 > 0;
  print(result);

  bool result2 = 12 > 10 && 0 > 1;
  print(result2);

  bool result3 = 12 > 10 || 1 > 0;
  print(result3);

  bool result4 = 12 > 10 || 0 > 1;
  print(result4);

  bool result5 = 12 < 10 || 0 > 1;
  print(result5);

  
}