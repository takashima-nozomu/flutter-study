import 'package:first_app/constants/simple_constants.dart';
import 'package:first_app/ui/screens/favorite.dart';
import 'package:first_app/ui/screens/home.dart';
import 'package:first_app/ui/screens/search_from_list.dart';
import 'package:first_app/ui/screens/search_from_location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  // riverpodを利用する.
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const HomePage(title: 'Cho-da'),
        '/favorite': (BuildContext context) =>
            const FavoritePage(title: 'お気に入りからお店を探す'),
        '/searchFromLocation': (BuildContext context) =>
            const SearchFromLocationPage(title: screenTitleSearchFromList),
        '/searchFromList': (BuildContext context) =>
            const SearchFromListPage(title: 'お店を検索する'),
      },
      title: 'Cho-da',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}
