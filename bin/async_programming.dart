void main() {
  for (var i = 0; i < 100; i++) {
    addNumbers(i, i);
  }

  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // 2개의 파라미터
  // delayed 지연되다
  // 1번 파라미터 - 지연할 시간 (얼마나 지연할 건지)
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수
  Future.delayed(Duration(seconds: 2), () {
    print('Delay 끝');
  });

  addNumbers2(1, 1);
  addNumbers2(2, 2);
}

// async = cpu를 효율적으로 사용할 수 있음

void addNumbers(int number1, int number2) {
  print('계산중 : $number1 + $number2');
  print('계산완료 : ${number1 + number2}');
}

void addNumbers2(int number1, int number2) {
  print('계산중 : $number1 + $number2'); // 1번
  
  // 서버 호출 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
    print('계산완료 : ${number1 + number2}'); // 3번
  });

  print('함수 완료'); // 2번
}