void main() {
  TimesTwo tt = TimesTwo(2);
  
  print(tt.calculate());

  TimesFour tf = TimesFour(4);

  print(tf.calculate());
}

// method - function(클래스 내에 있는 함수)
// override - 덮어쓰다(우선시하다)
class TimesTwo {
  final int number;

  TimesTwo(this.number);

  int calculate() {
    return number * 2;
  }
}

class TimesFour extends TimesTwo {
  TimesFour(super.number);
  // TimesFour(int number) : super(number);

  // @override
  // int calculate() {
  //   return super.number * 4;
  // }

  @override // 생략 가능
  int calculate() {
    return super.calculate() * 2;
  }
}