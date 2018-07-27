
class Person {
  String name;
  String country;
  void setCountry(String country){
    this.country = country;
  }
  String toString() => 'Name:$name\nCountry:$country';
}
void main(){

  //取整~/操作符
  int a = 3;
  int b = 2;
  print(a~/b);//输出1


  //当你要对一个单一的对象进行一系列的操作的时候
  //可以使用级联操作符 ..
  Person p = new Person();
  p ..name = 'wang'
    ..setCountry('china');
  print(p);

  //If语句
  var i = 0;
  if(i<0){
    print('i < 0');
  }else if(i ==0){
    print('i = 0');
  } else {
    print('i > 0');
  }

  //循环
  for(int i = 0; i<3; i++) {
    print(i);
  }

  //如果迭代的对象是容器，那么可以使用forEach或者for-in
  var collection = [0, 1, 2];

  collection.forEach((x) => print(x));//forEach的参数为Function
  for(var x in collection) {
    print(x);
  }


  //swith的参数可以是num，或者String
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print('CLOSED');
      break;
    case 'OPEN'://产生落空效果，执行下一分句
    case 'NOW_OPEN':
      print('OPEN');
      break;
    default:
      print('Default');
  }


  //异常处理
  //你可以抛出多个类型的Exception，但是由第一个catch到的分句来处理
  //如果catch分句没有指定类型，那么它可以处理任何类型的异常
  try {
    throw 'This a Exception!';
  } on Exception catch(e) {
    print('Unknown exception: $e');
  } catch(e) {
    print('Unknown type: $e');
  }

  //无论是否发生异常，为了使某些代码得以运行，可以使用finally语句
  try {
    throw 'This a Exception!';
  } catch(e) {//可以试试删除catch语句，只用try...finally是什么效果
    print('Catch Exception: $e');
  } finally {
    print('Close');
  }
}