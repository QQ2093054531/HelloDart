//导入https://dart.cn/samples#imports
//使用import关键字访问
import 'dart:math';//Importing core libraries
//import 'package:test/test.dart';//Importing libraries from external package
import '01_dart_start.dart';//Importing files
import 'Spacecraft.dart';
//变量https://dart.cn/samples#variables
void variable(){
  var name='Voyager I';
  var year=1977;
  var antennaDiameter=3.7;
  var flybyObjects=['Jupiter','Saturn','Uranus','Neptune'];
  var image={
    'tags':['saturn'],
    'url':'//path/to/saturn.jpg'
  };
  print(flybyObjects);
}

void controling(){//控制流语句https://dart.cn/samples#control-flow-statements
  var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};

//if-else语句
if (year>=2001){
  print('21st century');
}else if(year>=1901){
  print('20st century');
}

//for循环语句
for(final object in flybyObjects){
  print(object);
}
for(int month=1;month<=12;month++){
  print(month);
}
//while语句
while(year<2016){
  year+=1;
}
print(year);
}


//函数https://dart.cn/samples#functions
int fibonacci(int n){
  if(n==0||n==1){
    return n;
  }
  return fibonacci(n-1)+fibonacci(n-1);
}

//包的使用
void Get_max(int a,int b){
  print(max(a,b));
}

// 类https://dart.cn/samples#classes
// class Spacecraft{
//   string name;
//   DateTime? launchDate;
//   int? get launchYear=>launchDate?.year;

//   spacecraft(this.name,this.launchDate){
// // Initialization code goes here.
//   }
// // Named constructor that forwards to the default one.
// Spacecraft.unlaunched(String name) : this(name, null);

// void describe(){
//   print('Spacecraft:$ name');
//   var launchDate=this.launchDate;
//   if(launchDate!=null){
//     int years =DateTime.now().difference(launchDate).inDays~/365;
//     print('Launched: $launchYear($years years ago)');
//   }else{
//     print('Unlaunched');
//   }
// }
// }
//使用Spacecraft类
// void use_spaceC(){
//   var voyager=Spacecraft('voyager I',DateTime(1977,9,5));
//   voyager.describe();
// }
class Spacecraft {//类https://dart.cn/samples#classes
  String name;
  DateTime? launchDate;

  // Read-only non-final property
  int? get launchYear => launchDate?.year;

  // Constructor, with syntactic sugar for assignment to members.
  Spacecraft(this.name, this.launchDate) {
    // Initialization code goes here.
  }

  // Named constructor that forwards to the default one.
  Spacecraft.unlaunched(String name) : this(name, null);

  // Method.
  void describe() {
    print('Spacecraft: $name');
    // Type promotion doesn't work on getters.
    var launchDate = this.launchDate;
    if (launchDate != null) {
      int years = DateTime.now().difference(launchDate).inDays ~/ 365;
      print('Launched: $launchYear ($years years ago)');
    } else {
      print('Unlaunched');
    }
  }
}
void use_spaceC(){
  var voyager=Spacecraft('voyager I',DateTime(1977,9,5));
  voyager.describe();
}

class Orbiter extends Spacecraft{//扩展类https://dart.cn/samples#inheritance
  double altitude;
  Orbiter(String name,DateTime launchDate, this.altitude)
  :super(name, launchDate);
}
void Dream_space(){
  var voyager=Orbiter('长征一号',DateTime(1970,4,24),300);
  voyager.describe();
}
mixin Piloted{//Mixins https://dart.cn/samples#mixins
  int astronauts=1;
  void describeCrew(){
    print('Number of astronauts: $astronauts');
  }
}
class PilotedCraft extends Spacecraft with Piloted{
  
}
void NumAstronauts(){
  var num=PilotedCraft();
  num.describeCrew();
}
void main(){
  print('变量：');
  variable();
  print('\n控制流：');
  controling();
  print('\n函数：');
  print(fibonacci(10));
  print('\n找较大值：');
  Get_max(1,3);//math包的和函数使用
  print('\n飞行器：');
  use_spaceC();
  Dream_space();
  print('\n宇航员数量');
  NumAstronauts();
}
