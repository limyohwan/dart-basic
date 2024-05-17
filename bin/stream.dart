import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream(); // asBroadcastStream = 여러번 리스닝하는 스트림을 만들 수 있음

  final streamListener1 = stream.where((event) => event % 2 == 0).listen((event) {
    print('Listener 1 : $event');
  });

  final stremListener2 = stream.where((event) => event % 2 == 1).listen((event) {
    print('Listener2 : $event');
  });

  // controller.sink.add(1);
  // controller.sink.add(2);
  // controller.sink.add(3);
  // controller.sink.add(4);
  // controller.sink.add(5);

  calculate(2).listen((event) {
    print('calculate(2) : $event');
  });

  calculate(4).listen((event) {
    print('calculate(4) : $event');
  });

  // playAllStream().listen((event) {
  //   print(event);
  // });
}

Stream<int> calculate(int number) async* {
  for (var i = 0; i < 5; i++) {
    yield i * number;

    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> playAllStream() async* { // Future의 await와 비슷한 기능
  yield* calculate(1);
  yield* calculate(1000);
}