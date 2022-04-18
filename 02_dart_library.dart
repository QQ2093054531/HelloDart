import 'dart:math';

void dartcore_numbers_collection_string_and_more() {
  //数字、集合、字符串https://dart.cn/guides/libraries/library-tour#dartcore---numbers-collections-strings-and-more

  print('\n');
  print('#' * 40);
  print('数字、集合、字符串');
  print('#' * 40);

  assert(int.parse('42') == 42);
  assert(int.parse('0x42') == 66);
  assert(double.parse('0.50') == 0.5);
  assert(int.parse('42', radix: 16) == 66);

  assert(42.toString() == '42');
  assert(123.456.toString() == '123.456');
  assert(123.456.toStringAsFixed(2) == '123.46');
  assert(123.456.toStringAsPrecision(2) == '1.2e+2');
  assert(double.parse('1.2e+2') == 120);

  //字符和正则表达式https://dart.cn/guides/libraries/library-tour#strings-and-regular-expressions
  assert('Never odd or even'.contains('odd'));
  assert('Never odd or even'.startsWith('Never'));
  assert('Never odd or even'.endsWith('even'));
  assert('Never odd or even'.indexOf('odd') == 6);

  assert('Never odd or even'.substring(6, 9) == 'odd');
  var parts = 'progressive web apps'.split(' ');
  assert(parts.length == 3);
  assert(parts[0] == 'progressive');
  assert('Never add or even'[0] == 'N');
  for (final char in 'hello'.split('')) {
    print(char);
  }
  var codeUnnitList = 'Never odd or even'.codeUnits.toList();
  assert(codeUnnitList[0] == 78);

  //首字母大小写转换
  assert('web apps'.toUpperCase() == 'WEB APPS');
  assert('WEB APPS'.toLowerCase() == 'web apps');

  //Trimming 和空字符串
  //使用 trim() 移除首尾空格。使用 isEmpty 检查一个字符串是否为空（长度为 0）
  assert(' hello '.trim() == 'hell0');
  assert(''.isEmpty);
  assert(' '.isNotEmpty);

  //替换部分字符串
  var greetingTemplate = 'Hello, NAME!';
  var greeting = greetingTemplate.replaceAll(RegExp('NAME'), 'Bob');
  assert(greeting != greetingTemplate);

  //构建一个字符串
  var sb = StringBuffer();
  sb
    ..write('Use a StringBuffer for')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();
  assert(fullString == 'Use a StringBuffer for efficient string creation.');

  //正则表达式
  var numbers = RegExp(r'\d+'); //
  var allCharacters = 'llamas live 15 to 20 years';
  var someDigits = 'llamas live 15 to 20 years';
  assert(!allCharacters.contains(numbers));
  assert(someDigits.contains(numbers));
  var exedOut = someDigits.replaceAll(numbers, 'XX');
  assert(exedOut == 'llamas live XX to XX years');
}

void My_Lists() {
  var grains = <String>[];
  assert(grains.isEmpty);
  var fruits = ['apples', 'oranges'];
  fruits.add('kiwis');
  fruits.addAll(['grapes', 'bananas']);
  assert(fruits.length == 5);
  var appleIndex = fruits.indexOf('apples'); //使用 indexOf() 方法查找一个对象在 list 中的下标值
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);
  fruits.clear();
  assert(fruits.isEmpty);
  var vegetable = List.filled(99, 'broccoli');
  assert(vegetable.every((v) => v == 'broccoli'));
  fruits = ['bananas', 'apples', 'oranges'];
  fruits.sort((a, b) => a.compareTo(b));
  assert(fruits[0] == 'apples');

  fruits = <String>[];
  fruits.add('apples');
  var fruit = fruits[0];
  assert(fruit is String);
}

void the_sets() {
  //定义一个空集合
  var ingredients = <String>{};

  //加入新的项
  ingredients.addAll(['gold', 'titanuim', 'xenon']);
  assert(ingredients.length == 3);

  //加入重复元素对原来的集合没有影响
  ingredients.add('gold');
  assert(ingredients.length == 3);
  //从集合中剔除项
  ingredients.remove('gold');
  assert(ingredients.length == 2);

  //也可以将一种别的结构转化为集合
  var atomicNumbers = Set.from([70, 22, 54]);
  assert(atomicNumbers.length == 3);

  ingredients = Set<String>();
  ingredients.addAll(['gold', 'titanium', 'xenon']);

  //检查项目是否在集合中
  assert(ingredients.contains('titanium'));
  //检查所有的项目是不是都在集合中
  assert(ingredients.containsAll(['gold', 'titanium', 'xenon']));

  //构造两个集合共有项的集合
  var nobleGases = Set.from(['xenon', 'argon']);
  var intersectioin = ingredients.intersection(nobleGases);
  assert(intersectioin.length == 1);
  assert(intersectioin.contains('xenon'));
}

void the_map() {
  //字典经常使用字符串作为键值
  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'kauai': ['Hanalei', 'Poipu']
  };
  //字典可由构造函数built
  var searchTerms = Map();

  //字典是参数化类型，你可以具体化key和value的类型
  var nobleGases = {54: 'xenon'};

  //根据一个键值可得到对应的valu
  assert(nobleGases[54] == 'xenon');

  //检查一个字典是否包含一个key
  assert(nobleGases.containsKey(54));
  //剔除key和对应的value
  nobleGases.remove(54);
  assert(!nobleGases.containsKey(54));
  hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };

  //得到所有的key作为一个收集
  //（可迭代的）
  var keys = hawaiianBeaches.keys;
  assert(keys.length == 3);
  assert(Set.from(keys).contains('Oahu'));

  //得到所有的value作为一个收集
  //（可迭代的数组）
  var values = hawaiianBeaches.values;
  assert(values.length == 3);
  assert(values.any((v) => v.contains('waikiki')));

  hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  assert(hawaiianBeaches.containsKey('Oahu'));
  assert(hawaiianBeaches.containsKey('Florida'));
  var teamAssignments = <String, String>{};
  String pickToughestKid() {
    return "pickToughestKid";
  }

  teamAssignments.putIfAbsent('Catcher', () => pickToughestKid());
  assert(teamAssignments['Catcher'] != null);
}

void the_public_methods() {
  var coffees = <String>[];
  var teas = ['green', 'black', 'chamomile', 'earl grey'];
  assert(coffees.isEmpty);
  assert(teas.isNotEmpty);

  teas = ['green', 'black', 'chamomile', 'earl grey'];
  teas.forEach((tea) => print('i drink $tea'));

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  hawaiianBeaches.forEach((key, value) {
    print('i want to visit $key and swim at $value');
  });
  teas = ['green', 'black', 'chamomile', 'earl grey'];

  var loudTeas = teas.map((e) => e.toUpperCase());
  loudTeas.forEach(print);
  var loadTeas_str = loudTeas = teas.map((e) => e.toUpperCase()).toList();
  print(loadTeas_str);

  teas = ['green', 'black', 'chamomile', 'earl grey'];

  bool isDecaffeinated(String teaName) => teaName == 'chamomile';
  //使用where（）从提供的功能中找到仅有的项目并返回true
  var decaffinatedTeas = teas.where((element) => isDecaffeinated(element));

  //使用any（）去检查是否所有的项目都符合条件
  assert(!teas.every(isDecaffeinated));
}

void collections() {
  print('\n');
  print('#' * 40);
  print('集合');
  print('#' * 40);
  My_Lists();
  the_sets();
  the_map();
  the_public_methods();
}

void main() {
  collections();
}
