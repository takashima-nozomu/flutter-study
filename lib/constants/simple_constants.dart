
const String screenTitleHome = 'Home';
const String screenTitleSearchFromLocation = '現在位置からお店を探す';
const String screenTitleSearchFromList = 'お店を検索する';

/// スクリーンのEnum.
/// constで定義するものの中では利用できないようなので、使い勝手は？？？
enum Screens {
  home('HOME'),
  searchFromLocation('現在位置からお店を探す'),
  searchFromList('お店を検索する')
  ;
  final String _name;
  const Screens(this._name);
  String get getName => _name;
}
