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
  var appleIndex = fruits.indexOf('apples');//使用 indexOf() 方法查找一个对象在 list 中的下标值
  fruits.removeAt(appleIndex);
  assert(fruits.length == 4);
  fruits.clear();
  assert(fruits.isEmpty);
  var vegetable=List.filled(99, 'broccoli');

}
