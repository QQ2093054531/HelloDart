//导入https://dart.cn/samples#imports
//使用import关键字访问
import 'dart:math';//Importing core libraries
//import 'package:test/test.dart';//Importing libraries from external package
import '01_dart_start.dart';//Importing files

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

//类https://dart.cn/samples#classes
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

//使用


void main(){
  print('变量：');
  variable();
  print('\n控制流：');
  controling();
  print('\n函数：');
  print(fibonacci(10));
  print('\n找较大值：');
  Get_max(1,3);//math包的和函数使用
  
}
