void main(){

  //StringBuffer并不是容器,StringBuffer可以特别高效的构建多个字符串
  StringBuffer sb = new StringBuffer();

  sb.write("Use a StringBuffer ");
  sb.writeAll(['for ', 'efficient ', 'string ', 'creation ']);
  sb..write('if you are ')..write('building lots of string.');

  print(sb.toString());

  sb.clear();

  //列表，也就是常说的数组
  //常见的添加、索引、删除等方法如下
  // 使用List的构造函数，也可以添加int参数，表示List固定长度
  var list = new List();
  print(list);

  // 或者简单的用List来赋值
  var arr = ['apples', 'oranges'];

  // 添加元素
  arr.add('kiwis');

  // 添加多个元素
  arr.addAll(['grapes', 'bananas']);

  // 获取List的长度
  print(arr.length);

  // 利用索引获取元素
  print(arr[0]);

  // 查找某个元素的索引号
  print(arr.indexOf('apples'));

  // 利用索引号删除某个元素
  var appleIndex = arr.indexOf('apples');
  arr.removeAt(appleIndex);
  print(arr.length);

  // 删除所有的元素
  arr.clear();
  print(arr.length);

  //你可以使用sort()对List的元素进行排序
  //并且必须制定比较两个对象的函数，函数的返回值中
  //return <0 表示小于，0表示相同，>0表示大于
  var newarr = ['bananas', 'apples', 'oranges'];

  newarr.sort((a, b) => a.compareTo(b));
  print(newarr);


  //集合在Dart中无序，并且每个元素具有唯一性
  //因为它是无序的，因此你不能像List那样用索引来访问元素
  var set = new Set();

  set.addAll(['gold', 'titanium', 'xenon']);
  assert(set.length == 3);

  // 添加已存在的元素无效
  set.add('gold');
  assert(set.length == 3);

  // 删除元素
  set.remove('gold');
  assert(set.length == 2);

  // 检查在Set中是否包含某个元素
  assert(set.contains('titanium'));

  // 检查在Set中是否包含多个元素
  assert(set.containsAll(['titanium', 'xenon']));
  set.addAll(['gold', 'titanium', 'xenon']);

  // 获取两个集合的交集
  var nobleGases = new Set.from(['xenon', 'argon']);
  var intersection = set.intersection(nobleGases);
  assert(intersection.length == 1);
  assert(intersection.contains('xenon'));


  //映射，也有人称之为字典
  //Map是一个无序的键值对容器
  // Map的声明
  var dict = {
    'oahu' : ['waikiki', 'kailua', 'waimanalo'],
    'big island' : ['wailea bay', 'pololu beach'],
    'kauai' : ['hanalei', 'poipu']
  };
  var bmap = new Map();

  // 指定键值对的参数类型
  var map = new Map<int, String>();

  // Map的赋值，中括号中是Key，这里可不是数组
  map[54] = 'dart';

  //Map中的键值对是唯一的
  //同Set不同，第二次输入的Key如果存在，Value会覆盖之前的数据
  map[54] = 'xenon';
  assert(map[54] == 'xenon');

  // 检索Map是否含有某Key
  assert(map.containsKey(54));

  //删除某个键值对
  map.remove(54);
  assert(!map.containsKey(54));

  var keys = dict.keys;
  var values = dict.values;
  print(keys);
  print(values);

  //迭代器中有一个有意思的函数any，用来检测迭代器中的数据
  //当其中一个元素运行函数时return true，那么any的返回值就为true，否则为false
  //与之相对的是函数every，要所有函数运行函数return true，那么every返回true
  print(values.any((v) => v.indexOf('waikiki') != -1));
  print(values.every((v) => v.indexOf('waikiki') != -1));

  //检索是否包含某个Key或Value
  assert(dict.containsKey('oahu'));
  assert(!dict.containsKey('florida'));
}