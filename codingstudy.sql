/*
 Navicat Premium Data Transfer

 Source Server         : online-mysql
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : cdb-q9atzwrq.bj.tencentcdb.com:10167
 Source Schema         : codingstudy

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : 65001

 Date: 15/10/2020 13:21:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ze_blog
-- ----------------------------
DROP TABLE IF EXISTS `ze_blog`;
CREATE TABLE `ze_blog`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `bid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客id',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客内容',
  `sort` int(1) NOT NULL DEFAULT 0 COMMENT '排序 0 普通  1 置顶',
  `views` int(10) NOT NULL DEFAULT 0 COMMENT '浏览量',
  `author_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者id',
  `author_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者名',
  `author_avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者头像',
  `category_id` int(10) NOT NULL COMMENT '问题分类id',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题分类名称',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_update` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_blog
-- ----------------------------
INSERT INTO `ze_blog` VALUES (31, 'a9a310beb8124c7499352e5d71549d48', '序列化过程', '>序列化过程是将“一个对象编码成一个字节流”，相反的处理过程被称之为“反序列化过程”。当一个对象被序列化后，它的编码就可以从一台虚拟机传至另一个台虚拟机，可以被保存在磁盘上，方便以后反序列化使用。长期以来有一个误解，为了实现序列化，只需要实现Serializable接口即可，事实上这种方式存在诸多危害，贪图这种序列化方式的方便，会带来长期维护的成本。关于Serilizable有哪些注意事项？\r\n\r\n\r\n- 降低灵活性：如果一个类实现了Serializable接口，它的字节流编码也变成了它导出API的一部分，一旦这个类被广泛使用，就必须永远支持这种序列化方法。并且，如果使用了默认的Serializable， **这个类中私有的和包级私有的实例域都会变成导出的API的一部分，这不符合域最小访问级别的设计原则。** 另外，如果改变了类的内部结构的话，客户端企图用类的旧版本来序列化，而使用新版本来进行反序列化的话，程序就会出错。如果被序列化的类没有显示的指定serialVersionUID标识（序列版本UID），系统会自动根据这个类来调用一个复杂的运算过程生成该标识。此标识是根据类名称、接口名称、所有公有和受保护的成员名称生成的一个标志号。如果改变了类的内部结构，如添加了一个方法，自动产生的序列版本UID也会发生变化。因此，如果没有显式的声明一个版本号的话，兼容性就会遭到破坏，在运行时导致InvalidClassException。\r\n\r\n- 更容易引发Bug和安全漏洞：一般对象是由构造器创建的，而序列化也是一种对象创建机制，反序列化也可以构造对象。由于反序列化机制中没有显式的构造器，反序列化要确保：由真正的构造器建立的约束关系，并且不允许攻击者访问正在构造过程中的对象的内部信息。依靠默认的反序列化机制，很容易使对象的约束关系遭到破坏，以及遭受到非法访问。\r\n\r\n- 相关测试负担加重：当一个可序列化的类被修改后，需要检查“在新版中序列化一个实例，在旧版本中反序列化”及“在旧版本中序列化一个实例，在新版本反序列化”是否正常，当发布版本增多时，这种测试量与“可序列化的类的数量和发行版本号”的乘积成正比。\r\n', 0, 6, '9b27f32503c545ac85257cf91a39a697', 'admin', '/images/avatar/avatar-1.jpg', 10, '你好', '2020-10-14 21:30:58', '2020-10-14 21:30:58');
INSERT INTO `ze_blog` VALUES (32, '6b1d6ec2e636401f99880e59c6e2f88a', 'Java基础知识', '<!-- MarkdownTOC -->\r\n\r\n- [1. 面向对象和面向过程的区别](#1-面向对象和面向过程的区别)\r\n  - [面向过程](#面向过程)\r\n  - [面向对象](#面向对象)\r\n- [2. Java 语言有哪些特点](#2-java-语言有哪些特点)\r\n- [3. 关于 JVM JDK 和 JRE 最详细通俗的解答](#3-关于-jvm-jdk-和-jre-最详细通俗的解答)\r\n  - [JVM](#jvm)\r\n  - [JDK 和 JRE](#jdk-和-jre)\r\n- [4. Oracle JDK 和 OpenJDK 的对比](#4-oracle-jdk-和-openjdk-的对比)\r\n- [5. Java和C++的区别](#5-java和c的区别)\r\n- [6. 什么是 Java 程序的主类 应用程序和小程序的主类有何不同](#6-什么是-java-程序的主类-应用程序和小程序的主类有何不同)\r\n- [7. Java 应用程序与小程序之间有那些差别](#7-java-应用程序与小程序之间有那些差别)\r\n- [8. 字符型常量和字符串常量的区别](#8-字符型常量和字符串常量的区别)\r\n- [9. 构造器 Constructor 是否可被 override](#9-构造器-constructor-是否可被-override)\r\n- [10. 重载和重写的区别](#10-重载和重写的区别)\r\n- [11. Java 面向对象编程三大特性: 封装 继承 多态](#11-java-面向对象编程三大特性-封装-继承-多态)\r\n  - [封装](#封装)\r\n  - [继承](#继承)\r\n  - [多态](#多态)\r\n- [12. String StringBuffer 和 StringBuilder 的区别是什么 String 为什么是不可变的](#12-string-stringbuffer-和-stringbuilder-的区别是什么-string-为什么是不可变的)\r\n- [13. 自动装箱与拆箱](#13-自动装箱与拆箱)\r\n- [14. 在一个静态方法内调用一个非静态成员为什么是非法的](#14-在一个静态方法内调用一个非静态成员为什么是非法的)\r\n- [15. 在 Java 中定义一个不做事且没有参数的构造方法的作用](#15-在-java-中定义一个不做事且没有参数的构造方法的作用)\r\n- [16. import java和javax有什么区别](#16-import-java和javax有什么区别)\r\n- [17.  接口和抽象类的区别是什么](#17-接口和抽象类的区别是什么)\r\n- [18.  成员变量与局部变量的区别有那些](#18-成员变量与局部变量的区别有那些)\r\n- [19. 创建一个对象用什么运算符?对象实体与对象引用有何不同?](#19-创建一个对象用什么运算符对象实体与对象引用有何不同)\r\n- [20. 什么是方法的返回值?返回值在类的方法里的作用是什么?](#20-什么是方法的返回值返回值在类的方法里的作用是什么)\r\n- [21. 一个类的构造方法的作用是什么 若一个类没有声明构造方法,该程序能正确执行吗 ?为什么?](#21-一个类的构造方法的作用是什么-若一个类没有声明构造方法该程序能正确执行吗-为什么)\r\n- [22. 构造方法有哪些特性](#22-构造方法有哪些特性)\r\n- [23. 静态方法和实例方法有何不同](#23-静态方法和实例方法有何不同)\r\n- [24. 对象的相等与指向他们的引用相等，两者有什么不同？](#24-对象的相等与指向他们的引用相等两者有什么不同)\r\n- [25. 在调用子类构造方法之前会先调用父类没有参数的构造方法，其目的是?](#25-在调用子类构造方法之前会先调用父类没有参数的构造方法其目的是)\r\n- [26.  == 与 equals\\(重要\\)](#26--与-equals重要)\r\n- [27. hashCode 与 equals \\(重要\\)](#27-hashcode-与-equals-重要)\r\n  - [hashCode（）介绍](#hashcode（）介绍)\r\n  - [为什么要有 hashCode](#为什么要有-hashcode)\r\n  - [hashCode（）与equals（）的相关规定](#hashcode（）与equals（）的相关规定)\r\n- [28. 为什么Java中只有值传递](#28-为什么java中只有值传递)\r\n- [29. 简述线程，程序、进程的基本概念。以及他们之间关系是什么](#29-简述线程程序进程的基本概念以及他们之间关系是什么)\r\n- [30. 线程有哪些基本状态?](#30-线程有哪些基本状态)\r\n- [31 关于 final 关键字的一些总结](#31-关于-final-关键字的一些总结)\r\n- [32 Java 中的异常处理](#32-java-中的异常处理)\r\n  - [Java异常类层次结构图](#java异常类层次结构图)\r\n  - [Throwable类常用方法](#throwable类常用方法)\r\n  - [异常处理总结](#异常处理总结)\r\n- [33 Java序列化中如果有些字段不想进行序列化 怎么办](#33-java序列化中如果有些字段不想进行序列化-怎么办)\r\n- [34 获取用键盘输入常用的的两种方法](#34-获取用键盘输入常用的的两种方法)\r\n- [参考](#参考)\r\n\r\n<!-- /MarkdownTOC -->\r\n\r\n\r\n\r\n## 1. 面向对象和面向过程的区别\r\n\r\n### 面向过程\r\n\r\n**优点：** 性能比面向对象高，因为类调用时需要实例化，开销比较大，比较消耗资源;比如单片机、嵌入式开发、Linux/Unix等一般采用面向过程开发，性能是最重要的因素。\r\n\r\n**缺点：** 没有面向对象易维护、易复用、易扩展\r\n\r\n### 面向对象\r\n\r\n**优点：** 易维护、易复用、易扩展，由于面向对象有封装、继承、多态性的特性，可以设计出低耦合的系统，使系统更加灵活、更加易于维护\r\n\r\n**缺点：** 性能比面向过程低\r\n\r\n## 2. Java 语言有哪些特点\r\n\r\n1. 简单易学；\r\n2. 面向对象（封装，继承，多态）；\r\n3. 平台无关性（ Java 虚拟机实现平台无关性）；\r\n4. 可靠性；\r\n5. 安全性；\r\n6. 支持多线程（ C++ 语言没有内置的多线程机制，因此必须调用操作系统的多线程功能来进行多线程程序设计，而 Java 语言却提供了多线程支持）；\r\n7. 支持网络编程并且很方便（ Java 语言诞生本身就是为简化网络编程设计的，因此 Java 语言不仅支持网络编程而且很方便）；\r\n8. 编译与解释并存；\r\n\r\n## 3. 关于 JVM JDK 和 JRE 最详细通俗的解答\r\n\r\n### JVM\r\n\r\nJava虚拟机（JVM）是运行 Java 字节码的虚拟机。JVM有针对不同系统的特定实现（Windows，Linux，macOS），目的是使用相同的字节码，它们都会给出相同的结果。\r\n\r\n**什么是字节码?采用字节码的好处是什么?**\r\n\r\n> 在 Java 中，JVM可以理解的代码就叫做`字节码`（即扩展名为 `.class` 的文件），它不面向任何特定的处理器，只面向虚拟机。Java 语言通过字节码的方式，在一定程度上解决了传统解释型语言执行效率低的问题，同时又保留了解释型语言可移植的特点。所以 Java 程序运行时比较高效，而且，由于字节码并不专对一种特定的机器，因此，Java程序无须重新编译便可在多种不同的计算机上运行。\r\n\r\n**Java 程序从源代码到运行一般有下面3步：**\r\n\r\n![Java程序运行过程](https://my-blog-to-use.oss-cn-beijing.aliyuncs.com/Java%20%E7%A8%8B%E5%BA%8F%E8%BF%90%E8%A1%8C%E8%BF%87%E7%A8%8B.png)\r\n\r\n我们需要格外注意的是 .class->机器码 这一步。在这一步 jvm 类加载器首先加载字节码文件，然后通过解释器逐行解释执行，这种方式的执行速度会相对比较慢。而且，有些方法和代码块是经常需要被调用的，也就是所谓的热点代码，所以后面引进了 JIT 编译器，JIT 属于运行时编译。当 JIT 编译器完成第一次编译后，其会将字节码对应的机器码保存下来，下次可以直接使用。而我们知道，机器码的运行效率肯定是高于 Java 解释器的。这也解释了我们为什么经常会说 Java 是编译与解释共存的语言。\r\n\r\n> HotSpot采用了惰性评估(Lazy Evaluation)的做法，根据二八定律，消耗大部分系统资源的只有那一小部分的代码（热点代码），而这也就是JIT所需要编译的部分。JVM会根据代码每次被执行的情况收集信息并相应地做出一些优化，因此执行的次数越多，它的速度就越快。JDK 9引入了一种新的编译模式AOT(Ahead of Time Compilation)，它是直接将字节码编译成机器码，这样就避免了JIT预热等各方面的开销。JDK支持分层编译和AOT协作使用。但是 ，AOT 编译器的编译质量是肯定比不上 JIT 编译器的。\r\n\r\n总结：Java虚拟机（JVM）是运行 Java 字节码的虚拟机。JVM有针对不同系统的特定实现（Windows，Linux，macOS），目的是使用相同的字节码，它们都会给出相同的结果。字节码和不同系统的 JVM  实现是 Java 语言“一次编译，随处可以运行”的关键所在。 \r\n\r\n### JDK 和 JRE\r\n\r\nJDK是Java Development Kit，它是功能齐全的Java SDK。它拥有JRE所拥有的一切，还有编译器（javac）和工具（如javadoc和jdb）。它能够创建和编译程序。\r\n\r\nJRE 是 Java运行时环境。它是运行已编译 Java 程序所需的所有内容的集合，包括 Java虚拟机（JVM），Java类库，java命令和其他的一些基础构件。但是，它不能用于创建新程序。\r\n\r\n如果你只是为了运行一下 Java 程序的话，那么你只需要安装 JRE 就可以了。如果你需要进行一些 Java 编程方面的工作，那么你就需要安装JDK了。但是，这不是绝对的。有时，即使您不打算在计算机上进行任何Java开发，仍然需要安装JDK。例如，如果要使用JSP部署Web应用程序，那么从技术上讲，您只是在应用程序服务器中运行Java程序。那你为什么需要JDK呢？因为应用程序服务器会将 JSP 转换为 Java servlet，并且需要使用 JDK 来编译 servlet。\r\n\r\n## 4. Oracle JDK 和 OpenJDK 的对比\r\n\r\n可能在看这个问题之前很多人和我一样并没有接触和使用过  OpenJDK 。那么Oracle和OpenJDK之间是否存在重大差异？下面通过我通过我收集到一些资料对你解答这个被很多人忽视的问题。\r\n\r\n对于Java 7，没什么关键的地方。OpenJDK项目主要基于Sun捐赠的HotSpot源代码。此外，OpenJDK被选为Java 7的参考实现，由Oracle工程师维护。关于JVM，JDK，JRE和OpenJDK之间的区别，Oracle博客帖子在2012年有一个更详细的答案：\r\n\r\n> 问：OpenJDK存储库中的源代码与用于构建Oracle JDK的代码之间有什么区别？\r\n>\r\n> 答：非常接近 - 我们的Oracle JDK版本构建过程基于OpenJDK 7构建，只添加了几个部分，例如部署代码，其中包括Oracle的Java插件和Java WebStart的实现，以及一些封闭的源代码派对组件，如图形光栅化器，一些开源的第三方组件，如Rhino，以及一些零碎的东西，如附加文档或第三方字体。展望未来，我们的目的是开源Oracle JDK的所有部分，除了我们考虑商业功能的部分。\r\n\r\n总结：\r\n\r\n1. Oracle JDK版本将每三年发布一次，而OpenJDK版本每三个月发布一次；\r\n2. OpenJDK 是一个参考模型并且是完全开源的，而Oracle JDK是OpenJDK的一个实现，并不是完全开源的；\r\n3. Oracle JDK 比 OpenJDK 更稳定。OpenJDK和Oracle JDK的代码几乎相同，但Oracle JDK有更多的类和一些错误修复。因此，如果您想开发企业/商业软件，我建议您选择Oracle JDK，因为它经过了彻底的测试和稳定。某些情况下，有些人提到在使用OpenJDK 可能会遇到了许多应用程序崩溃的问题，但是，只需切换到Oracle JDK就可以解决问题；\r\n4. 在响应性和JVM性能方面，Oracle JDK与OpenJDK相比提供了更好的性能；\r\n5. Oracle JDK不会为即将发布的版本提供长期支持，用户每次都必须通过更新到最新版本获得支持来获取最新版本；\r\n6. Oracle JDK根据二进制代码许可协议获得许可，而OpenJDK根据GPL v2许可获得许可。\r\n\r\n## 5. Java和C++的区别\r\n\r\n我知道很多人没学过 C++，但是面试官就是没事喜欢拿咱们 Java 和 C++ 比呀！没办法！！！就算没学过C++，也要记下来！\r\n\r\n- 都是面向对象的语言，都支持封装、继承和多态\r\n- Java 不提供指针来直接访问内存，程序内存更加安全\r\n- Java 的类是单继承的，C++ 支持多重继承；虽然 Java 的类不可以多继承，但是接口可以多继承。\r\n- Java 有自动内存管理机制，不需要程序员手动释放无用内存\r\n\r\n\r\n## 6. 什么是 Java 程序的主类 应用程序和小程序的主类有何不同\r\n\r\n一个程序中可以有多个类，但只能有一个类是主类。在 Java 应用程序中，这个主类是指包含 main（）方法的类。而在 Java 小程序中，这个主类是一个继承自系统类 JApplet 或 Applet 的子类。应用程序的主类不一定要求是 public 类，但小程序的主类要求必须是 public 类。主类是 Java 程序执行的入口点。\r\n\r\n## 7. Java 应用程序与小程序之间有那些差别\r\n\r\n简单说应用程序是从主线程启动(也就是 main() 方法)。applet 小程序没有main方法，主要是嵌在浏览器页面上运行(调用init()线程或者run()来启动)，嵌入浏览器这点跟 flash 的小游戏类似。\r\n\r\n## 8. 字符型常量和字符串常量的区别\r\n\r\n1. 形式上: 字符常量是单引号引起的一个字符 字符串常量是双引号引起的若干个字符\r\n2. 含义上: 字符常量相当于一个整形值( ASCII 值),可以参加表达式运算 字符串常量代表一个地址值(该字符串在内存中存放位置)\r\n3. 占内存大小 字符常量只占2个字节 字符串常量占若干个字节(至少一个字符结束标志) (**注意： char在Java中占两个字节**)\r\n\r\n> java编程思想第四版：2.2.2节\r\n![](http://my-blog-to-use.oss-cn-beijing.aliyuncs.com/18-9-15/86735519.jpg)\r\n\r\n## 9. 构造器 Constructor 是否可被 override\r\n\r\n在讲继承的时候我们就知道父类的私有属性和构造方法并不能被继承，所以 Constructor 也就不能被 override（重写）,但是可以 overload（重载）,所以你可以看到一个类中有多个构造函数的情况。\r\n\r\n## 10. 重载和重写的区别\r\n\r\n**重载：** 发生在同一个类中，方法名必须相同，参数类型不同、个数不同、顺序不同，方法返回值和访问修饰符可以不同，发生在编译时。 　　\r\n\r\n**重写：**   发生在父子类中，方法名、参数列表必须相同，返回值范围小于等于父类，抛出的异常范围小于等于父类，访问修饰符范围大于等于父类；如果父类方法访问修饰符为 private 则子类就不能重写该方法。\r\n\r\n## 11. Java 面向对象编程三大特性: 封装 继承 多态\r\n\r\n### 封装\r\n\r\n封装把一个对象的属性私有化，同时提供一些可以被外界访问的属性的方法，如果属性不想被外界访问，我们大可不必提供方法给外界访问。但是如果一个类没有提供给外界访问的方法，那么这个类也没有什么意义了。\r\n\r\n\r\n### 继承\r\n继承是使用已存在的类的定义作为基础建立新类的技术，新类的定义可以增加新的数据或新的功能，也可以用父类的功能，但不能选择性地继承父类。通过使用继承我们能够非常方便地复用以前的代码。\r\n\r\n**关于继承如下 3 点请记住：**\r\n\r\n1. 子类拥有父类非 private 的属性和方法。\r\n2. 子类可以拥有自己属性和方法，即子类可以对父类进行扩展。\r\n3. 子类可以用自己的方式实现父类的方法。（以后介绍）。\r\n\r\n### 多态\r\n\r\n所谓多态就是指程序中定义的引用变量所指向的具体类型和通过该引用变量发出的方法调用在编程时并不确定，而是在程序运行期间才确定，即一个引用变量到底会指向哪个类的实例对象，该引用变量发出的方法调用到底是哪个类中实现的方法，必须在由程序运行期间才能决定。\r\n\r\n在Java中有两种形式可以实现多态：继承（多个子类对同一方法的重写）和接口（实现接口并覆盖接口中同一方法）。\r\n\r\n## 12. String StringBuffer 和 StringBuilder 的区别是什么 String 为什么是不可变的\r\n\r\n**可变性**\r\n　\r\n\r\n简单的来说：String 类中使用 final 关键字字符数组保存字符串，`private　final　char　value[]`，所以 String 对象是不可变的。而StringBuilder 与 StringBuffer 都继承自 AbstractStringBuilder 类，在 AbstractStringBuilder 中也是使用字符数组保存字符串`char[]value` 但是没有用 final 关键字修饰，所以这两种对象都是可变的。\r\n\r\nStringBuilder 与 StringBuffer 的构造方法都是调用父类构造方法也就是 AbstractStringBuilder 实现的，大家可以自行查阅源码。\r\n\r\nAbstractStringBuilder.java\r\n\r\n```java\r\nabstract class AbstractStringBuilder implements Appendable, CharSequence {\r\n    char[] value;\r\n    int count;\r\n    AbstractStringBuilder() {\r\n    }\r\n    AbstractStringBuilder(int capacity) {\r\n        value = new char[capacity];\r\n    }\r\n```\r\n\r\n\r\n**线程安全性**\r\n\r\nString 中的对象是不可变的，也就可以理解为常量，线程安全。AbstractStringBuilder 是 StringBuilder 与 StringBuffer 的公共父类，定义了一些字符串的基本操作，如 expandCapacity、append、insert、indexOf 等公共方法。StringBuffer 对方法加了同步锁或者对调用的方法加了同步锁，所以是线程安全的。StringBuilder 并没有对方法进行加同步锁，所以是非线程安全的。\r\n　　\r\n\r\n**性能**\r\n\r\n每次对 String 类型进行改变的时候，都会生成一个新的 String 对象，然后将指针指向新的 String 对象。StringBuffer 每次都会对 StringBuffer 对象本身进行操作，而不是生成新的对象并改变对象引用。相同情况下使用 StringBuilder 相比使用 StringBuffer 仅能获得 10%~15% 左右的性能提升，但却要冒多线程不安全的风险。\r\n\r\n**对于三者使用的总结：** \r\n1. 操作少量的数据 = String\r\n2. 单线程操作字符串缓冲区下操作大量数据 = StringBuilder\r\n3. 多线程操作字符串缓冲区下操作大量数据 = StringBuffer\r\n\r\n## 13. 自动装箱与拆箱\r\n**装箱**：将基本类型用它们对应的引用类型包装起来；\r\n\r\n**拆箱**：将包装类型转换为基本数据类型；\r\n\r\n## 14. 在一个静态方法内调用一个非静态成员为什么是非法的\r\n\r\n由于静态方法可以不通过对象进行调用，因此在静态方法里，不能调用其他非静态变量，也不可以访问非静态变量成员。\r\n\r\n## 15. 在 Java 中定义一个不做事且没有参数的构造方法的作用\r\n　Java 程序在执行子类的构造方法之前，如果没有用 super() 来调用父类特定的构造方法，则会调用父类中“没有参数的构造方法”。因此，如果父类中只定义了有参数的构造方法，而在子类的构造方法中又没有用 super() 来调用父类中特定的构造方法，则编译时将发生错误，因为 Java 程序在父类中找不到没有参数的构造方法可供执行。解决办法是在父类里加上一个不做事且没有参数的构造方法。\r\n　\r\n## 16. import java和javax有什么区别\r\n\r\n刚开始的时候 JavaAPI 所必需的包是 java 开头的包，javax 当时只是扩展 API 包来说使用。然而随着时间的推移，javax 逐渐的扩展成为 Java API 的组成部分。但是，将扩展从 javax 包移动到 java 包将是太麻烦了，最终会破坏一堆现有的代码。因此，最终决定 javax 包将成为标准API的一部分。\r\n\r\n所以，实际上java和javax没有区别。这都是一个名字。\r\n\r\n## 17. 接口和抽象类的区别是什么\r\n\r\n1. 接口的方法默认是 public，所有方法在接口中不能有实现(Java 8 开始接口方法可以有默认实现），抽象类可以有非抽象的方法\r\n2.  接口中的实例变量默认是 final 类型的，而抽象类中则不一定 \r\n3.  一个类可以实现多个接口，但最多只能实现一个抽象类 \r\n4.  一个类实现接口的话要实现接口的所有方法，而抽象类不一定 \r\n5.  接口不能用 new 实例化，但可以声明，但是必须引用一个实现该接口的对象 从设计层面来说，抽象是对类的抽象，是一种模板设计，接口是行为的抽象，是一种行为的规范。\r\n\r\n备注:在JDK8中，接口也可以定义静态方法，可以直接用接口名调用。实现类和实现是不可以调用的。如果同时实现两个接口，接口中定义了一样的默认方法，必须重写，不然会报错。(详见issue:[https://github.com/Snailclimb/JavaGuide/issues/146](https://github.com/Snailclimb/JavaGuide/issues/146))\r\n\r\n## 18. 成员变量与局部变量的区别有那些\r\n\r\n1. 从语法形式上，看成员变量是属于类的，而局部变量是在方法中定义的变量或是方法的参数；成员变量可以被 public,private,static 等修饰符所修饰，而局部变量不能被访问控制修饰符及 static 所修饰；但是，成员变量和局部变量都能被 final 所修饰；\r\n2. 从变量在内存中的存储方式来看:如果成员变量是使用`static`修饰的，那么这个成员变量是属于类的，如果没有使用使用`static`修饰，这个成员变量是属于实例的。而对象存在于堆内存，局部变量存在于栈内存\r\n3. 从变量在内存中的生存时间上看:成员变量是对象的一部分，它随着对象的创建而存在，而局部变量随着方法的调用而自动消失。\r\n4. 成员变量如果没有被赋初值:则会自动以类型的默认值而赋值（一种情况例外被 final 修饰的成员变量也必须显示地赋值）；而局部变量则不会自动赋值。\r\n\r\n## 19. 创建一个对象用什么运算符?对象实体与对象引用有何不同?\r\n\r\nnew运算符，new创建对象实例（对象实例在堆内存中），对象引用指向对象实例（对象引用存放在栈内存中）。一个对象引用可以指向0个或1个对象（一根绳子可以不系气球，也可以系一个气球）;一个对象可以有n个引用指向它（可以用n条绳子系住一个气球）。\r\n\r\n## 20. 什么是方法的返回值?返回值在类的方法里的作用是什么?\r\n\r\n方法的返回值是指我们获取到的某个方法体中的代码执行后产生的结果！（前提是该方法可能产生结果）。返回值的作用:接收出结果，使得它可以用于其他的操作！\r\n\r\n## 21. 一个类的构造方法的作用是什么 若一个类没有声明构造方法,该程序能正确执行吗 ?为什么?\r\n\r\n主要作用是完成对类对象的初始化工作。可以执行。因为一个类即使没有声明构造方法也会有默认的不带参数的构造方法。\r\n\r\n## 22. 构造方法有哪些特性\r\n\r\n1. 名字与类名相同；\r\n2. 没有返回值，但不能用void声明构造函数；\r\n3. 生成类的对象时自动执行，无需调用。\r\n\r\n## 23. 静态方法和实例方法有何不同\r\n\r\n1. 在外部调用静态方法时，可以使用\"类名.方法名\"的方式，也可以使用\"对象名.方法名\"的方式。而实例方法只有后面这种方式。也就是说，调用静态方法可以无需创建对象。 \r\n\r\n2. 静态方法在访问本类的成员时，只允许访问静态成员（即静态成员变量和静态方法），而不允许访问实例成员变量和实例方法；实例方法则无此限制.\r\n\r\n## 24. 对象的相等与指向他们的引用相等,两者有什么不同?\r\n\r\n对象的相等，比的是内存中存放的内容是否相等。而引用相等，比较的是他们指向的内存地址是否相等。\r\n\r\n## 25. 在调用子类构造方法之前会先调用父类没有参数的构造方法,其目的是?\r\n\r\n帮助子类做初始化工作。\r\n\r\n## 26. == 与 equals(重要)\r\n\r\n**==** : 它的作用是判断两个对象的地址是不是相等。即，判断两个对象是不是同一个对象。(基本数据类型==比较的是值，引用数据类型==比较的是内存地址)\r\n\r\n**equals()** : 它的作用也是判断两个对象是否相等。但它一般有两种使用情况：\r\n-  情况1：类没有覆盖 equals() 方法。则通过 equals() 比较该类的两个对象时，等价于通过“==”比较这两个对象。\r\n- 情况2：类覆盖了 equals() 方法。一般，我们都覆盖 equals() 方法来两个对象的内容相等；若它们的内容相等，则返回 true (即，认为这两个对象相等)。\r\n\r\n\r\n**举个例子：**\r\n\r\n```java\r\npublic class test1 {\r\n    public static void main(String[] args) {\r\n        String a = new String(\"ab\"); // a 为一个引用\r\n        String b = new String(\"ab\"); // b为另一个引用,对象的内容一样\r\n        String aa = \"ab\"; // 放在常量池中\r\n        String bb = \"ab\"; // 从常量池中查找\r\n        if (aa == bb) // true\r\n            System.out.println(\"aa==bb\");\r\n        if (a == b) // false，非同一对象\r\n            System.out.println(\"a==b\");\r\n        if (a.equals(b)) // true\r\n            System.out.println(\"aEQb\");\r\n        if (42 == 42.0) { // true\r\n            System.out.println(\"true\");\r\n        }\r\n    }\r\n}\r\n```\r\n\r\n**说明：**\r\n- String 中的 equals 方法是被重写过的，因为 object 的 equals 方法是比较的对象的内存地址，而 String 的 equals 方法比较的是对象的值。\r\n- 当创建 String 类型的对象时，虚拟机会在常量池中查找有没有已经存在的值和要创建的值相同的对象，如果有就把它赋给当前引用。如果没有就在常量池中重新创建一个 String 对象。\r\n\r\n\r\n\r\n##  27. hashCode 与 equals (重要)\r\n\r\n面试官可能会问你：“你重写过 hashcode 和 equals 么，为什么重写equals时必须重写hashCode方法？”\r\n\r\n### hashCode（）介绍\r\nhashCode() 的作用是获取哈希码，也称为散列码；它实际上是返回一个int整数。这个哈希码的作用是确定该对象在哈希表中的索引位置。hashCode() 定义在JDK的Object.java中，这就意味着Java中的任何类都包含有hashCode() 函数。\r\n\r\n散列表存储的是键值对(key-value)，它的特点是：能根据“键”快速的检索出对应的“值”。这其中就利用到了散列码！（可以快速找到所需要的对象）\r\n\r\n### 为什么要有 hashCode\r\n\r\n\r\n**我们以“HashSet 如何检查重复”为例子来说明为什么要有 hashCode：**\r\n\r\n当你把对象加入 HashSet 时，HashSet 会先计算对象的 hashcode 值来判断对象加入的位置，同时也会与其他已经加入的对象的 hashcode 值作比较，如果没有相符的hashcode，HashSet会假设对象没有重复出现。但是如果发现有相同 hashcode 值的对象，这时会调用 equals（）方法来检查 hashcode 相等的对象是否真的相同。如果两者相同，HashSet 就不会让其加入操作成功。如果不同的话，就会重新散列到其他位置。（摘自我的Java启蒙书《Head first java》第二版）。这样我们就大大减少了 equals 的次数，相应就大大提高了执行速度。\r\n\r\n\r\n\r\n### hashCode（）与equals（）的相关规定\r\n\r\n1. 如果两个对象相等，则hashcode一定也是相同的\r\n2. 两个对象相等,对两个对象分别调用equals方法都返回true\r\n3. 两个对象有相同的hashcode值，它们也不一定是相等的\r\n4. **因此，equals 方法被覆盖过，则 hashCode 方法也必须被覆盖**\r\n5. hashCode() 的默认行为是对堆上的对象产生独特值。如果没有重写 hashCode()，则该 class 的两个对象无论如何都不会相等（即使这两个对象指向相同的数据）\r\n\r\n\r\n## 28. 为什么Java中只有值传递\r\n\r\n [为什么Java中只有值传递？](https://github.com/Snailclimb/JavaGuide/blob/master/EssentialContentForInterview/MostCommonJavaInterviewQuestions/%E7%AC%AC%E4%B8%80%E5%91%A8%EF%BC%882018-8-7%EF%BC%89.md)\r\n\r\n\r\n## 29. 简述线程,程序,进程的基本概念.以及他们之间关系是什么?\r\n\r\n**线程**与进程相似，但线程是一个比进程更小的执行单位。一个进程在其执行的过程中可以产生多个线程。与进程不同的是同类的多个线程共享同一块内存空间和一组系统资源，所以系统在产生一个线程，或是在各个线程之间作切换工作时，负担要比进程小得多，也正因为如此，线程也被称为轻量级进程。  \r\n\r\n**程序**是含有指令和数据的文件，被存储在磁盘或其他的数据存储设备中，也就是说程序是静态的代码。\r\n\r\n**进程**是程序的一次执行过程，是系统运行程序的基本单位，因此进程是动态的。系统运行一个程序即是一个进程从创建，运行到消亡的过程。简单来说，一个进程就是一个执行中的程序，它在计算机中一个指令接着一个指令地执行着，同时，每个进程还占有某些系统资源如CPU时间，内存空间，文件，文件，输入输出设备的使用权等等。换句话说，当程序在执行时，将会被操作系统载入内存中。\r\n线程是进程划分成的更小的运行单位。线程和进程最大的不同在于基本上各进程是独立的，而各线程则不一定，因为同一进程中的线程极有可能会相互影响。从另一角度来说，进程属于操作系统的范畴，主要是同一段时间内，可以同时执行一个以上的程序，而线程则是在同一程序内几乎同时执行一个以上的程序段。\r\n\r\n## 30. 线程有哪些基本状态?\r\n\r\nJava 线程在运行的生命周期中的指定时刻只可能处于下面6种不同状态的其中一个状态（图源《Java 并发编程艺术》4.1.4节）。\r\n\r\n![Java线程的状态](https://my-blog-to-use.oss-cn-beijing.aliyuncs.com/19-1-29/Java%E7%BA%BF%E7%A8%8B%E7%9A%84%E7%8A%B6%E6%80%81.png)\r\n\r\n线程在生命周期中并不是固定处于某一个状态而是随着代码的执行在不同状态之间切换。Java 线程状态变迁如下图所示（图源《Java 并发编程艺术》4.1.4节）：\r\n\r\n![Java线程状态变迁](https://my-blog-to-use.oss-cn-beijing.aliyuncs.com/19-1-29/Java%20%E7%BA%BF%E7%A8%8B%E7%8A%B6%E6%80%81%E5%8F%98%E8%BF%81.png)\r\n\r\n\r\n\r\n由上图可以看出：\r\n\r\n线程创建之后它将处于 **NEW（新建）** 状态，调用 `start()` 方法后开始运行，线程这时候处于 **READY（可运行）** 状态。可运行状态的线程获得了 cpu 时间片（timeslice）后就处于 **RUNNING（运行）** 状态。\r\n\r\n> 操作系统隐藏 Java虚拟机（JVM）中的 RUNNABLE 和 RUNNING 状态，它只能看到 RUNNABLE 状态（图源：[HowToDoInJava](https://howtodoinjava.com/)：[Java Thread Life Cycle and Thread States](https://howtodoinjava.com/java/multi-threading/java-thread-life-cycle-and-thread-states/)），所以 Java 系统一般将这两个状态统称为 **RUNNABLE（运行中）** 状态 。\r\n\r\n![RUNNABLE-VS-RUNNING](https://my-blog-to-use.oss-cn-beijing.aliyuncs.com/2019-3/RUNNABLE-VS-RUNNING.png)\r\n\r\n当线程执行 `wait()`方法之后，线程进入 **WAITING（等待）**状态。进入等待状态的线程需要依靠其他线程的通知才能够返回到运行状态，而 **TIME_WAITING(超时等待)** 状态相当于在等待状态的基础上增加了超时限制，比如通过 `sleep（long millis）`方法或 `wait（long millis）`方法可以将 Java 线程置于 TIMED WAITING 状态。当超时时间到达后 Java 线程将会返回到 RUNNABLE 状态。当线程调用同步方法时，在没有获取到锁的情况下，线程将会进入到 **BLOCKED（阻塞）** 状态。线程在执行 Runnable 的` run() `方法之后将会进入到 **TERMINATED（终止）** 状态。\r\n\r\n## 31 关于 final 关键字的一些总结\r\n\r\nfinal关键字主要用在三个地方：变量、方法、类。\r\n\r\n1. 对于一个final变量，如果是基本数据类型的变量，则其数值一旦在初始化之后便不能更改；如果是引用类型的变量，则在对其初始化之后便不能再让其指向另一个对象。\r\n2. 当用final修饰一个类时，表明这个类不能被继承。final类中的所有成员方法都会被隐式地指定为final方法。\r\n3. 使用final方法的原因有两个。第一个原因是把方法锁定，以防任何继承类修改它的含义；第二个原因是效率。在早期的Java实现版本中，会将final方法转为内嵌调用。但是如果方法过于庞大，可能看不到内嵌调用带来的任何性能提升（现在的Java版本已经不需要使用final方法进行这些优化了）。类中所有的private方法都隐式地指定为final。\r\n\r\n## 32 Java 中的异常处理\r\n\r\n### Java异常类层次结构图\r\n\r\n![Java异常类层次结构图](https://my-blog-to-use.oss-cn-beijing.aliyuncs.com/2019-2/Exception.png)\r\n   在 Java 中，所有的异常都有一个共同的祖先java.lang包中的 **Throwable类**。Throwable： 有两个重要的子类：**Exception（异常）** 和 **Error（错误）** ，二者都是 Java 异常处理的重要子类，各自都包含大量子类。\r\n\r\n**Error（错误）:是程序无法处理的错误**，表示运行应用程序中较严重问题。大多数错误与代码编写者执行的操作无关，而表示代码运行时 JVM（Java 虚拟机）出现的问题。例如，Java虚拟机运行错误（Virtual MachineError），当 JVM 不再有继续执行操作所需的内存资源时，将出现 OutOfMemoryError。这些异常发生时，Java虚拟机（JVM）一般会选择线程终止。\r\n\r\n这些错误表示故障发生于虚拟机自身、或者发生在虚拟机试图执行应用时，如Java虚拟机运行错误（Virtual MachineError）、类定义错误（NoClassDefFoundError）等。这些错误是不可查的，因为它们在应用程序的控制和处理能力之 外，而且绝大多数是程序运行时不允许出现的状况。对于设计合理的应用程序来说，即使确实发生了错误，本质上也不应该试图去处理它所引起的异常状况。在 Java中，错误通过Error的子类描述。\r\n\r\n**Exception（异常）:是程序本身可以处理的异常**。</font>Exception 类有一个重要的子类 **RuntimeException**。RuntimeException 异常由Java虚拟机抛出。**NullPointerException**（要访问的变量没有引用任何对象时，抛出该异常）、**ArithmeticException**（算术运算异常，一个整数除以0时，抛出该异常）和 **ArrayIndexOutOfBoundsException** （下标越界异常）。\r\n\r\n**注意：异常和错误的区别：异常能被程序本身可以处理，错误是无法处理。**\r\n\r\n### Throwable类常用方法\r\n\r\n- **public string getMessage()**:返回异常发生时的详细信息\r\n- **public string toString()**:返回异常发生时的简要描述\r\n- **public string getLocalizedMessage()**:返回异常对象的本地化信息。使用Throwable的子类覆盖这个方法，可以声称本地化信息。如果子类没有覆盖该方法，则该方法返回的信息与getMessage（）返回的结果相同\r\n- **public void printStackTrace()**:在控制台上打印Throwable对象封装的异常信息\r\n\r\n### 异常处理总结\r\n\r\n- **try 块：**用于捕获异常。其后可接零个或多个catch块，如果没有catch块，则必须跟一个finally块。\r\n- **catch 块：**用于处理try捕获到的异常。\r\n- **finally 块：**无论是否捕获或处理异常，finally块里的语句都会被执行。当在try块或catch块中遇到return语句时，finally语句块将在方法返回之前被执行。\r\n\r\n**在以下4种特殊情况下，finally块不会被执行：**\r\n\r\n1. 在finally语句块第一行发生了异常。 因为在其他行，finally块还是会得到执行\r\n2. 在前面的代码中用了System.exit(int)已退出程序。 exit是带参函数 ；若该语句在异常语句之后，finally会执行\r\n3. 程序所在的线程死亡。\r\n4. 关闭CPU。\r\n\r\n下面这部分内容来自issue:<https://github.com/Snailclimb/JavaGuide/issues/190>。\r\n\r\n**关于返回值：**\r\n\r\n如果try语句里有return，返回的是try语句块中变量值。 \r\n详细执行过程如下：\r\n\r\n1. 如果有返回值，就把返回值保存到局部变量中；\r\n2. 执行jsr指令跳到finally语句里执行；\r\n3. 执行完finally语句后，返回之前保存在局部变量表里的值。\r\n4. 如果try，finally语句里均有return，忽略try的return，而使用finally的return.\r\n\r\n## 33 Java序列化中如果有些字段不想进行序列化 怎么办\r\n\r\n对于不想进行序列化的变量，使用transient关键字修饰。\r\n\r\ntransient关键字的作用是：阻止实例中那些用此关键字修饰的的变量序列化；当对象被反序列化时，被transient修饰的变量值不会被持久化和恢复。transient只能修饰变量，不能修饰类和方法。\r\n\r\n## 34 获取用键盘输入常用的的两种方法\r\n\r\n方法1：通过 Scanner\r\n\r\n```java\r\nScanner input = new Scanner(System.in);\r\nString s  = input.nextLine();\r\ninput.close();\r\n```\r\n\r\n方法2：通过 BufferedReader \r\n\r\n```java\r\nBufferedReader input = new BufferedReader(new InputStreamReader(System.in)); \r\nString s = input.readLine(); \r\n```\r\n\r\n## 参考\r\n\r\n- https://stackoverflow.com/questions/1906445/what-is-the-difference-between-jdk-and-jre\r\n- https://www.educba.com/oracle-vs-openjdk/\r\n- https://stackoverflow.com/questions/22358071/differences-between-oracle-jdk-and-openjdk?answertab=active#tab-top\r\n', 0, 1, '9b27f32503c545ac85257cf91a39a697', 'admin', '/images/avatar/avatar-1.jpg', 10, '随记', '2020-10-15 12:40:23', '2020-10-15 12:40:23');

-- ----------------------------
-- Table structure for ze_blog_category
-- ----------------------------
DROP TABLE IF EXISTS `ze_blog_category`;
CREATE TABLE `ze_blog_category`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '博客分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_blog_category
-- ----------------------------
INSERT INTO `ze_blog_category` VALUES (10, '随记');

-- ----------------------------
-- Table structure for ze_comment
-- ----------------------------
DROP TABLE IF EXISTS `ze_comment`;
CREATE TABLE `ze_comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `comment_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论唯一id',
  `topic_category` int(1) NOT NULL COMMENT '1博客 2问答',
  `topic_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论主题id',
  `user_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论者id',
  `user_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论者昵称',
  `user_avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论者头像',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `gmt_create` datetime(0) NOT NULL COMMENT '评论创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_comment
-- ----------------------------
INSERT INTO `ze_comment` VALUES (138, 'fa9811455a2449468de5ce3ff7805fa3', 1, '7957a7e9973f4294b1a75984db943456', '9b27f32503c545ac85257cf91a39a695', '123456', '/images/avatar/avatar-1.jpg', 'qewqe', '2020-10-13 16:25:16');
INSERT INTO `ze_comment` VALUES (140, 'e8f7cd20a9aa4d539540ff325a136fa3', 2, '37a5fcf9a80e4dde80bb6e3f6afde14d', '9b27f32503c545ac85257cf91a39a695', '123456', '/images/avatar/avatar-1.jpg', 'test123456', '2020-10-13 16:34:20');
INSERT INTO `ze_comment` VALUES (142, '3933704169e04ed096366c054899ea0f', 2, '37a5fcf9a80e4dde80bb6e3f6afde14d', '9b27f32503c545ac85257cf91a39a697', 'admin', '/images/avatar/avatar-1.JPG', '可不可以付现金？”你扫码给摆摊老人的钱，他们可能拿不到……', '2020-10-14 16:53:19');
INSERT INTO `ze_comment` VALUES (143, 'b3b470b9232b44f08a60b7e8dcb3bb82', 2, '37a5fcf9a80e4dde80bb6e3f6afde14d', '9b27f32503c545ac85257cf91a39a697', 'admin', '/images/avatar/avatar-1.JPG', '可不可以付现金？”你扫码给摆摊老人的钱，他们可能拿不到……', '2020-10-14 16:53:23');
INSERT INTO `ze_comment` VALUES (144, 'ec9b0a7b27c44f8ca870642988c980de', 1, '7957a7e9973f4294b1a75984db943456', '9b27f32503c545ac85257cf91a39a697', 'admin', '/images/avatar/avatar-1.JPG', 'dwadawdaw', '2020-10-14 16:57:23');
INSERT INTO `ze_comment` VALUES (145, '6cb0a0d6b5e646daa8925fef5a6a9dc7', 1, '7957a7e9973f4294b1a75984db943456', '25dd025a8f424dedbc70d8ac689deebe', 'yhb', '/images/avatar/avatar-1.jpg', 'map，你开心就好', '2020-10-14 21:42:52');
INSERT INTO `ze_comment` VALUES (146, 'ae0a6082b6bd4ccba50fa4e41e19da4a', 2, 'f66214df6b724603b80de038ba460ac8', '9b27f32503c545ac85257cf91a39a697', 'admin', '/images/avatar/avatar-1.jpg', '优化方法一：java -jar xxx.jar &\r\n优化方法二：nohup java -jar xxx.jar &\r\nnohup 表示不挂断运行命令行，当账号退出或关闭终端时，程序仍然运行\r\n当用 nohup 命令执行作业时，该作业的所有输出被重定向到nohup.out的文件中，除非另外指定了输出文件。\r\n优化方法三：nohup java -jar xxx.jar >/usr/local/temp.txt &', '2020-10-14 22:07:26');

-- ----------------------------
-- Table structure for ze_download
-- ----------------------------
DROP TABLE IF EXISTS `ze_download`;
CREATE TABLE `ze_download`  (
  `dname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源名',
  `ddesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源链接',
  `dcode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '提取码'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_download
-- ----------------------------
INSERT INTO `ze_download` VALUES ('软考真题', '全栈自学社区回复关键字', '软考资料');

-- ----------------------------
-- Table structure for ze_invite
-- ----------------------------
DROP TABLE IF EXISTS `ze_invite`;
CREATE TABLE `ze_invite`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邀请码',
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '状态 0 未使用 1 使用',
  `active_time` datetime(0) DEFAULT NULL COMMENT '激活时间',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1223 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_invite
-- ----------------------------
INSERT INTO `ze_invite` VALUES (1217, 'xzMhehe', '84dc587a607c4c05bf13b50ed217c879', 1, '2020-10-13 16:44:13', '2020-10-13 16:42:53');
INSERT INTO `ze_invite` VALUES (1218, 'yhb', '37e4cd20e00144ff963f280574ca8550', 1, '2020-10-14 21:38:23', '2020-10-14 21:37:28');
INSERT INTO `ze_invite` VALUES (1219, 'yhb666', '25dd025a8f424dedbc70d8ac689deebe', 1, '2020-10-14 21:41:55', '2020-10-14 21:38:50');
INSERT INTO `ze_invite` VALUES (1220, 'zzx', '2e65fca570ca4a439ad151e82bb94d23', 1, '2020-10-14 22:25:59', '2020-10-14 22:24:26');
INSERT INTO `ze_invite` VALUES (1221, 'mjb666', '55ba7bf8343c4d1293ee9ad2e2b6639b', 1, '2020-10-14 22:50:48', '2020-10-14 22:48:38');
INSERT INTO `ze_invite` VALUES (1222, 'hsd', 'f26aca4b69a54241a0bc52befed7bd8d', 1, '2020-10-14 23:14:14', '2020-10-14 23:12:26');

-- ----------------------------
-- Table structure for ze_question
-- ----------------------------
DROP TABLE IF EXISTS `ze_question`;
CREATE TABLE `ze_question`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `qid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题id',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题内容',
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '状态 0 未解决 1 已解决',
  `sort` int(1) NOT NULL DEFAULT 0 COMMENT '排序 0 普通  1 置顶',
  `views` int(10) NOT NULL DEFAULT 0 COMMENT '浏览量',
  `author_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者id',
  `author_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者名',
  `author_avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者头像',
  `category_id` int(10) NOT NULL COMMENT '问题分类id',
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题分类名称',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_update` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_question
-- ----------------------------
INSERT INTO `ze_question` VALUES (37, 'f66214df6b724603b80de038ba460ac8', 'Linux下运行jar包的方法,你该怎么做', 'Linux下运行jar包的方法有哪些', 1, 0, 13, '9b27f32503c545ac85257cf91a39a697', 'admin', '/images/avatar/avatar-1.jpg', 15, 'test', '2020-10-14 22:06:29', '2020-10-14 22:06:29');

-- ----------------------------
-- Table structure for ze_question_category
-- ----------------------------
DROP TABLE IF EXISTS `ze_question_category`;
CREATE TABLE `ze_question_category`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `category` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_question_category
-- ----------------------------
INSERT INTO `ze_question_category` VALUES (15, 'test');

-- ----------------------------
-- Table structure for ze_say
-- ----------------------------
DROP TABLE IF EXISTS `ze_say`;
CREATE TABLE `ze_say`  (
  `id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '唯一id',
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `content` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `gmt_create` datetime(0) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_say
-- ----------------------------
INSERT INTO `ze_say` VALUES ('1', 'test', 'test', '2020-10-13 16:29:49');
INSERT INTO `ze_say` VALUES ('2', '线上社区成立', '欢迎小伙伴们', '2020-10-13 16:33:13');

-- ----------------------------
-- Table structure for ze_user
-- ----------------------------
DROP TABLE IF EXISTS `ze_user`;
CREATE TABLE `ze_user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
  `role_id` int(10) NOT NULL COMMENT '角色编号',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '/images/avatar/avatar-1.jpg' COMMENT '头像',
  `login_date` datetime(0) NOT NULL COMMENT '登录时间',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 849 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_user
-- ----------------------------
INSERT INTO `ze_user` VALUES (840, '9b27f32503c545ac85257cf91a39a697', 2, 'admin', '$2a$10$qRUcogk4TxsV8fjPIYVh9OCj0UQ7ZXA0Brmr.7e6LvfotkgQipmUi', '/images/avatar/avatar-1.jpg', '2020-10-03 08:36:11', '2020-10-03 08:36:07');
INSERT INTO `ze_user` VALUES (841, '9b27f32503c545ac85257cf91a39a696', 0, 'xzMhehe', '$2a$10$qRUcogk4TxsV8fjPIYVh9OCj0UQ7ZXA0Brmr.7e6LvfotkgQipmUi', '/images/avatar/avatar-1.jpg', '2020-10-13 16:16:39', '2020-10-13 16:16:42');
INSERT INTO `ze_user` VALUES (842, '9b27f32503c545ac85257cf91a39a695', 2, '123456', '$2a$10$qRUcogk4TxsV8fjPIYVh9OCj0UQ7ZXA0Brmr.7e6LvfotkgQipmUi', '/images/avatar/avatar-1.jpg', '2020-10-13 16:22:25', '2020-10-13 16:22:29');
INSERT INTO `ze_user` VALUES (843, '84dc587a607c4c05bf13b50ed217c879', 2, 'test_one', '$2a$10$Px2l8TAX.ssB1sXFEkJJie9ZEi30xjTCHPRXX0OBAP9bfjO0j9kpe', '/images/avatar/avatar-1.jpg', '2020-10-13 16:44:13', '2020-10-13 16:44:13');
INSERT INTO `ze_user` VALUES (844, '37e4cd20e00144ff963f280574ca8550', 2, 'admina', '$2a$10$05gx5r/g5aESxj54M2UCQumKJpxCCdFT37eIxIu3CH3oe5g092OmW', '/images/avatar/avatar-1.jpg', '2020-10-14 21:38:23', '2020-10-14 21:38:23');
INSERT INTO `ze_user` VALUES (845, '25dd025a8f424dedbc70d8ac689deebe', 2, 'yhb', '$2a$10$q4WTKhafrFc4Pohrh/NzWOILl2UbsGULKKIT2QkOUllNLHpoQHaZC', '/images/avatar/avatar-1.jpg', '2020-10-14 21:41:54', '2020-10-14 21:41:54');
INSERT INTO `ze_user` VALUES (846, '2e65fca570ca4a439ad151e82bb94d23', 2, '曾自喜', '$2a$10$HocTY6JGvDGnLqEF4REVKeyyPAnNZcwmyYORP1CvNmyb/lL8eQObm', '/images/avatar/avatar-1.jpg', '2020-10-14 22:25:59', '2020-10-14 22:25:59');
INSERT INTO `ze_user` VALUES (847, '55ba7bf8343c4d1293ee9ad2e2b6639b', 2, '1724500774', '$2a$10$6VaonD6R7B6N2lio17Q1COFL48EuAiqAL2rHDPqtyTwoAg5uJfIgO', '/images/avatar/avatar-1.jpg', '2020-10-14 22:50:47', '2020-10-14 22:50:47');
INSERT INTO `ze_user` VALUES (848, 'f26aca4b69a54241a0bc52befed7bd8d', 2, 'hsd1334238700', '$2a$10$AD6kyoHL84y/SUl7XEciS.3YdRhQl2LXgdmTaZ4txdDe.5oQrC882', '/images/avatar/avatar-1.jpg', '2020-10-14 23:14:14', '2020-10-14 23:14:14');

-- ----------------------------
-- Table structure for ze_user_donate
-- ----------------------------
DROP TABLE IF EXISTS `ze_user_donate`;
CREATE TABLE `ze_user_donate`  (
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `donate_json` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '赞赏二维码信息'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_user_donate
-- ----------------------------
INSERT INTO `ze_user_donate` VALUES ('9b27f32503c545ac85257cf91a39a697', '456');

-- ----------------------------
-- Table structure for ze_user_info
-- ----------------------------
DROP TABLE IF EXISTS `ze_user_info`;
CREATE TABLE `ze_user_info`  (
  `uid` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `nickname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户昵称',
  `realname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '真实姓名',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'QQ',
  `wechat` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'WeChat',
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机',
  `work` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工作',
  `address` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `hobby` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '爱好',
  `intro` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '自我介绍'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_user_info
-- ----------------------------
INSERT INTO `ze_user_info` VALUES ('9b27f32503c545ac85257cf91a39a697', '全栈自学社区群主', '厦大', '1111', '111', 'test@qq.com', '110', '板砖', '天津工业大学', 'Hello world', 'Hello world');
INSERT INTO `ze_user_info` VALUES ('9b27f32503c545ac85257cf91a39a696', 'test', '的', '111', '11', 'test@gmail', '111', '板砖', '理工大学', '钱', '0');
INSERT INTO `ze_user_info` VALUES ('9b27f32503c545ac85257cf91a39a695', 'test', '0', '0', '0', 'dw@qq.com', '110', '0', '0', '0', '0');
INSERT INTO `ze_user_info` VALUES ('84dc587a607c4c05bf13b50ed217c879', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ze_user_info` VALUES ('37e4cd20e00144ff963f280574ca8550', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ze_user_info` VALUES ('25dd025a8f424dedbc70d8ac689deebe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ze_user_info` VALUES ('2e65fca570ca4a439ad151e82bb94d23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `ze_user_info` VALUES ('55ba7bf8343c4d1293ee9ad2e2b6639b', 'BeFondOfSunday', '马晋宝', '1724500774', '', '1724500774@qq.com', '', '', '', '', '');
INSERT INTO `ze_user_info` VALUES ('f26aca4b69a54241a0bc52befed7bd8d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ze_user_role
-- ----------------------------
DROP TABLE IF EXISTS `ze_user_role`;
CREATE TABLE `ze_user_role`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '无描述...' COMMENT '角色描述',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ze_user_role
-- ----------------------------
INSERT INTO `ze_user_role` VALUES (2, 'ROLE_admin', '无描述...', '2020-10-13 15:52:15');
INSERT INTO `ze_user_role` VALUES (3, 'ROLE_general', '无描述...', '2020-10-13 16:22:45');
INSERT INTO `ze_user_role` VALUES (5, 'ROLE_general', '无描述...', '2020-10-13 16:18:04');

SET FOREIGN_KEY_CHECKS = 1;
