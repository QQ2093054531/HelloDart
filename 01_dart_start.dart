//导入https://dart.cn/samples#imports
//使用import关键字访问
import 'dart:math';//Importing core libraries
import 'package:test/test.dart';//Importing libraries from external package
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




void main(){
  print('变量：');
  variable();
  print('\n控制流：');
  controling();
  print('\n函数：');
  print(fibonacci(10));
  
}
