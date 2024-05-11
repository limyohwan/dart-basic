void main() {
  List<String> blackPink = ['rose', 'jisoo', 'lisa', 'jenny'];

  print(blackPink);
  print(blackPink.asMap());
  print(blackPink.toSet());

  Map blackPinkMap = blackPink.asMap();

  print(blackPinkMap.keys.toList());  // Iterable -> List
  print(blackPinkMap.values); // Iterable

  Set blackPinkSet = Set.from(blackPink);

  print(blackPinkSet.toList());

  final newBlackPink = blackPink.map((e){
    return 'blackpink $e';
  });

  print(newBlackPink.toList());

  final newBlackPink2 = blackPink.map((e) => 'balckpink $e');

  print(newBlackPink2.toList());
  
  print(blackPink == blackPink);
  print(newBlackPink == blackPink);
  print(newBlackPink == newBlackPink2);

  String number = '13579';

  final parsed = number.split('').map((e) => '$e.jpg').toList();

  print(parsed);


}