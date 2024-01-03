import 'package:flutter/material.dart';
import 'package:first_app/ui/styles/borders.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFromListPage extends ConsumerWidget {
  const SearchFromListPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(
          alignment: Alignment.center,
          width: screenSize.width,
          height: screenSize.height,
          color: Colors.blue.shade50,
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(screenSize.width * 0.05),
                child: Container(
                    alignment: Alignment.center,
                    width: screenSize.width * 0.9,
                    height: screenSize.width * 0.2,
                    decoration: BORDER_1_SOLID_BLACK,
                    child: Row(children: <Widget>[
                      Column(
                        children: <Widget>[
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BORDER_1_SOLID_BLACK,
                              child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  'Apply Fitted Box',
                                  style: TextStyle(
                                    backgroundColor: Colors.greenAccent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BORDER_1_SOLID_BLACK,
                              child: Text(
                                'two:',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FittedBox(
                            fit: BoxFit.contain,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BORDER_1_SOLID_BLACK,
                              child: Text(
                                'three:',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ])),
              ),
            ],
          )),
    );
  }
}
