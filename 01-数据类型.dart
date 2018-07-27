void main(){
  //  Dart中所有东西都是对象，包括数字、函数等

  //Dart 语言本质上是动态类型语言，类型是可选的
  //可以使用 var 声明变量，也可以使用类型来声明变量
  //一个变量也可以被赋予不同类型的对象
  //但大多数情况，我们不会去改变一个变量的类型

  //字符串赋值的时候，可以使用单引号，也可以使用双引号
  var str1 = "OK?";

  String str2 = 'its ok';

  print(str1);
  print(str2);

  //使用三个单引号或者双引号可以多行字符串赋值
  var str3 = """Dart Lang
  Hello,World!""";
  print(str3);

  //在Dart中，相邻的字符串在编译的时候会自动连接
  //这里发现一个问题，如果多个字符串相邻，中间的字符串不能为空，否则报错
  //但是如果单引号和双引号相邻，即使是空值也不会报错，但相信没有人这么做
  //var name = 'Wang''''Jianfei'; 报错
  var name = 'Wang'' ''Jianfei';

  //assert 是语言内置的断言函数，仅在检查模式下有效
  //如果断言失败则程序立刻终止
  assert(name == "Wang Jianfei");

  //除了上面的方式，字符串拼接还可以这样：
  print("Name：$name");
  print("Name：${name}");
  print(str1+str2);

  //声明原始字符串，直接在字符串前加字符“r”
  //可以避免“\”的转义作用，在正则表达式里特别有用
  print("换行符：\n");
  print(r"换行符：\n");

  var i = 10;
  print(i);
  int a = 10;
  print(a);
  const b = 10;
  print(b);
  final c = 10;
  print(c);

  //const和final定义的都是常量，值不能改变
  //并且在声明的时候就必须初始化
  //但是也有细微差别，简单来说
  //const定义的是编译时常量，只能用编译时常量来初始化
  //final定义的常量可以用变量来初始化

  final time1 = new DateTime.now(); //Ok
  print(time1);
//  const time2 = new DateTime.now(); //报错

}