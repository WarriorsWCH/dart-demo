class Point {
  num x;
  num y;
  num z;

  Point(this.x, this.y, z) { //第一个值传递给this.x，第二个值传递给this.y
    this.z = z;
  }

  Point.fromeList(var list): //命名构造函数，格式为Class.name(var param)
        x = list[0], y = list[1], z = list[2]{//使用冒号初始化变量
  }

  //当然，上面句你也可以简写为：
  //Point.fromeList(var list):this(list[0], list[1], list[2]);

  String toString() => 'x:$x  y:$y  z:$z';
}


class Rectangle {
  num left;
  num top;
  num width;
  num height;

  Rectangle(this.left, this.top, this.width, this.height);

  //Getter和Setter是用来读写一个对象属性的方法
  //每个字段都对应一个隐式的Getter和Setter
  //但是调用的时候是obj.x，而不是obj.x()
  //
  //你可以使用get和set关键字扩展功能
  //如果字段为final或者const的话，那么它只有一个getter方法

  // right 和 bottom 两个属性的计算方法
  num get right => left + width;
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}


//在Dart中类和接口是统一的，类就是接口
//如果你想重写部分功能，那么你可以继承一个类
//如果你想实现某些功能，那么你也可以实现一个类
//
//使用abstract关键字来定义抽象类，并且抽象类不能被实例化
//抽象方法不需要关键字，直接以分号 ; 结束即可
abstract class Person {  //此时abstract关键字可加可不加，如果加上的话Person不能被实例化
  String greet(who); //函数可以没有实现语句，名曰隐式接口，前面不用加 abstract 关键字
}

class Student implements Person {
  String name;
  Student(this.name);

  String greet(who) => 'Student: I am $name!';
}

class Teacher implements Person {
  String name;
  Teacher(this.name);

  String greet(who) => 'Teacher: I am $name!';
}

//Dart中是单继承，子类可以继承父类的非私有变量
//当重写某个函数的时候
//不用考虑abstract或者接口或者函数实现
//直接重写，比如greet()函数
//而且仍然保持多态性
class Persons {
  String name;

  Persons(this.name);
  String greet(who) => 'I am $name!';
}

class Students extends Persons {
  Students(String name):super(name);
  String greet(who) => 'Student: I am $name!';
}

class Teachers extends Persons {
  Teachers(String name):super(name);
  String greet(who) => 'Teacher: I am $name!';
}
void main() {

  var p1 = new Point(1, 2, 3);
  var p2 = new Point.fromeList([1, 2, 3]);
  print(p1);//默认调用toString()函数
  print(p2);

  var rect = new Rectangle(3, 4, 20, 15);
  print(rect.right);

  rect.right = 12;
  print(rect.right);

  Person student = new Student('Wang');
  Person teacher = new Teacher('Lee');

  print(student.greet('Chen'));
  print(teacher.greet('Chen'));

  Persons ps1 = new Students('Wang');
  Persons ps2 = new Teachers('Lee');

  print(ps1.greet('Chen'));
  print(ps2.greet('Chen'));
}