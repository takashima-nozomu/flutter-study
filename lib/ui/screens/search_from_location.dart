import 'package:flutter/material.dart';

class SearchFromLocationPage extends StatefulWidget {
  const SearchFromLocationPage({super.key, required this.title});
  final String title;
  @override
  State<SearchFromLocationPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SearchFromLocationPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Container(
          child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ],
      )
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
