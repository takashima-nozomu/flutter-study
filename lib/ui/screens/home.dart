import 'package:flutter/material.dart';
import 'package:first_app/ui/styles/borders.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        width: _screenSize.width,
        height: _screenSize.height,
        color: Colors.blue.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: _screenSize.width * 0.9,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/searchFromLocation');
                },
                icon: Icon(Icons.question_answer),
                label: Text('サービスの説明'),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                ),
              ),
            ),
            SizedBox(
              width: _screenSize.width * 0.9,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/searchFromLocation');
                },
                icon: Icon(Icons.location_on),
                label: Text('現在位置からお店を探す'),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                ),
              ),
            ),
            Container(
              width: _screenSize.width * 0.9,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/favorite');
                },
                icon: Icon(Icons.favorite),
                label: Text('お気に入りからお店を探す'),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                ),
              ),
            ),
            Container(
              width: _screenSize.width * 0.9,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushNamed('/searchFromList');
                },
                icon: Icon(Icons.search),
                label: Text('お店を検索する'),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
