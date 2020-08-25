# DesignPattern
Design Pattern Sample Code

1. simply-factory(简单工厂模式), 最简单的封装案例了。
2. decorator(装饰者模式)，一个对象把自己包了一层，最终还是自己。
3. proxy(代理模式)，iOS中的NSProxy协议，经典的实现。
4. strategy(策略模式），跟simple factory差不多，只是返回的对象有个context包起来而已。
5. factory method(工程方法模式), 把简单工程中的case判断抽成各个工厂类，解决了增加工厂类型的时候需要对工厂类进行修改的问题（开放-封闭原则）。
6. prototype(原型模式), iOS中的NSCopying协议，可以通过一个对象创建出一个新的对象，这里要注意深浅拷贝的问题。
7. template-method(模板方法模式), 父类定义框架流程，子类实现差异化的具体对象插入父类的流程框架中。
8. facade(外观模式), 把子系统全部包一层，统一一个接口对象给外面使用。
9. builder(建造者模式), 一个工人，工人有一堆的基础构造能力，一个监工，监工匹配一个工人，监工指挥工人，最后从工人处拿到构造成果对象。
10. observer(观察者模式), 又称publish/subscribe模式，iOS中的Notification,KVO都属于这种模式。
11. abstract-factory(抽象工厂模式), 跟工厂方法模式一样，只是一个工厂可以生产多个抽象对象而已。
12. state(状态模式), 跟策略模式类似，不同的是具体的状态感知context, 可以修改context的状态。
13. adapter(适配器模式), 俗话说的包一层，包完的对象继承与期望的对象。
14. momonto(备忘录模式), 一个类可以打包其内部可以恢复的状态值为一个备忘单独存储，有需要的时候可以设置回去一次性恢复。
