### Dart简介
Dart是谷歌开发的用于浏览器编程的一门语言，据说其主要目的是替代掉javascrip。其语法和javascript很相似，但比其简洁，也更容易看懂。

### Dart SDK安装（MAC）
安装安装homebrew，将下面命令粘贴至终端:

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

安装homebrew, 然后在终端执行下面命令:

    $ brew tap dart-lang/dart
    $ brew install dart --devel

如果使用稳定版本，不要使用--devel，执行下面命令:

    $ brew install dart


To upgrade when a new release of Dart is available run:

    $ brew upgrade dart

To upgrade to a dev channel release when a stable release is currently active, run:

    $ brew upgrade dart --devel --force

To install the most recent stable channel release when a more recent dev release is currently active, run:

    $ brew uninstall dart
    $ brew install dart

To switch between locally installed dart releases run brew switch dart <version>. Examples:

    $ brew switch dart 1.24.3
    $ brew switch dart 2.0.0-dev.64.1

If you aren’t sure which versions of dart you have installed, then run:

    $ brew info dart

### Dart知识点
- 数据类型
- 函数
- 操作符和流程控制语句
- 类和对象
- 容器


### 参考资源

- https://www.dartlang.org/
- http://www.cndartlang.com/
- https://blog.csdn.net/chaoyangsun/article/details/80529573
- https://www.jianshu.com/p/fa275a08b083
- https://blog.csdn.net/qq_35246620/article/details/63253518
- https://www.jetbrains.com/idea/