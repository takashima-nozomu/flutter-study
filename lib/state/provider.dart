import 'package:first_app/model/store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mainProvider = Provider((ref) {
  var main =  <String,dynamic>{};
  main.putIfAbsent('test', () => 'hoge');
  main.putIfAbsent('storeSearchResult', () => List<Store>.from([Store('店舗名A', '住所A', '0312345678'),Store('店舗名B', '住所', '0312345679')]));
  return main;
});
