import 'package:first_app/model/store.dart';
import 'package:first_app/state/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchFromListPage extends ConsumerWidget {
  const SearchFromListPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var _screenSize = MediaQuery.of(context).size;
    var textEditController = TextEditingController();
    List<Store> storeSearchResult = ref.watch(mainProvider)['storeSearchResult'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Container(
          width: _screenSize.width,
          height: _screenSize.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'キーワード、店舗名、駅などを入力',
                  ),
                ),
              ),
            Container(
              height: 125,
              padding: EdgeInsets.all(4),
              // 配列を元にリスト表示
              child: ListView.builder(
                itemCount: storeSearchResult.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    color: Colors.blue[600],
                    child: Text(storeSearchResult[index].name),
                  );
                },
              ),
            ),
            ],
          )),
    );
  }
}
