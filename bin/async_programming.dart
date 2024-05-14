void main() async {
  // for (var i = 0; i < 100; i++) {
  //   addNumbers(i, i);
  // }

  // 미래에 받아올 값
  Future<String> name = Future.value('코드팩토리');
  Future<int> number = Future.value(1);
  Future<bool> isTrue = Future.value(true);

  // 2개의 파라미터
  // delayed 지연되다
  // 1번 파라미터 - 지연할 시간 (얼마나 지연할 건지)
  // 2번 파라미터 - 지연 시간이 지난 후 실행할 함수
  // Future.delayed(Duration(seconds: 2), () {
  //   print('Delay 끝');
  // });

  // addNumbers2(1, 1);
  // addNumbers2(2, 2);

  // addNumbers3(1, 1);
  // addNumbers3(2, 2);

  // await addNumbers4(1, 1);
  // await addNumbers4(2, 2);

  final reault1 = await addNumbers5(1, 1); // await 하지 않으면 정상 값이 리턴되지 않은 Future 객체가 리턴됨
  print(reault1);
}

// async = cpu를 효율적으로 사용할 수 있음

void addNumbers(int number1, int number2) {
  print('addNumbers 계산중 : $number1 + $number2');
  print('addNumbers 계산완료 : ${number1 + number2}');
  print('addNumbers 함수 완료 : ${number1 + number2}');
}

void addNumbers2(int number1, int number2) {
  print('addNumbers2 계산중 : $number1 + $number2'); // 1번
  
  // 서버 호출 시뮬레이션
  Future.delayed(Duration(seconds: 2), () {
    print('addNumbers2 계산완료 : ${number1 + number2}'); // 3번
  });

  print('addNumbers2 함수 완료 : ${number1 + number2}'); // 2번
}

void addNumbers3(int number1, int number2) async { // async를 붙어야 Future같은 비동기 관련된 함수들 앞에 await 키워드를 넣을 수 있음
  print('addNumbers3 계산중 : $number1 + $number2'); // 1번
  
  // 서버 호출 결과가 완료될 떄까지 대기, 하지만 await를 한다고 cpu를 점유하지 않고 await하는 동안 다른 코드를 찾아 실행하게됨
  await Future.delayed(Duration(seconds: 2), () {
    print('addNumbers3 계산완료 : ${number1 + number2}'); // 2번
  });

  print('addNumbers3 함수 완료 : ${number1 + number2}'); // 3번
}

Future<void> addNumbers4(int number1, int number2) async { // Future를 리턴하게 되면 호출하는 곳에서도 async를 선언할 수 있음
  print('addNumbers4 계산중 : $number1 + $number2'); // 1번
  
  await Future.delayed(Duration(seconds: 2), () {
    print('addNumbers4 계산완료 : ${number1 + number2}'); // 2번
  });

  print('addNumbers4 함수 완료 : ${number1 + number2}'); // 3번
}

Future<int> addNumbers5(int number1, int number2) async { // Future를 리턴하게 되면 호출하는 곳에서도 async를 선언할 수 있음
  print('addNumbers4 계산중 : $number1 + $number2'); // 1번
  
  await Future.delayed(Duration(seconds: 2), () {
    print('addNumbers4 계산완료 : ${number1 + number2}'); // 2번
  });

  print('addNumbers4 함수 완료 : ${number1 + number2}'); // 3번

  return number1 + number2;
}