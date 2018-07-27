void main(){

  String sayHello(String name){

    return 'hello dart $name';
  }
  //断言函数assert()，Debug模式下，当表达式的值为false时抛出异常。
  //在SDK 1.22.0中，assert()添加了第二个参数message，用于在抛出异常的时候，输出具体信息。
  assert(sayHello is Function);
  //is  is!操作符判断对象是否为指定类型，如num、String等
  print(sayHello is Function);
  print(sayHello('haha'));

  //简化
//  sayHello(name){
//    return 'Hello dart $name!';
//  }

  //箭头函数
//  sayHello(name) => 'Hello dart $name!';

  //匿名函数
//  var  sayHello = (name)=>'Hello dart $name!';

  Function makeSubstract(num n)
  {
    return (num i) => n - i;
  }
  var x = makeSubstract(5);
  print(x(2));

  var callbacks = [];
  for (var i = 0; i < 3; i++) {
    // 在列表 callbacks 中添加一个函数对象，这个函数会记住 for 循环中当前 i 的值。
    callbacks.add(() => print('Save $i'));
  }
  callbacks.forEach((c) => c()); // 分别输出 0 1 2


  //Dart中支持两种可选参数：命名可选参数和位置可选参数
  //但两种可选不能同时使用
  //命名可选参数使用大括号{}，默认值用冒号:
  //位置可选参数使用方括号[]，默认值用等号=
  FunX(a, {b, c:3, d:4, e})
  {
    print('$a $b $c $d $e');
  }

  FunY(a, [b, c=3, d=4, e])
  {
    print('$a $b $c $d $e');
  }
  FunX(1, b:3, d:5);
  FunY(1, 3, 5);
}