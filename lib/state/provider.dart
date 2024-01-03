import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainProvider = Provider((ref) {
  var main =  <String,String>{};
  main.putIfAbsent('test', () => 'hoge');
  return main;
});
