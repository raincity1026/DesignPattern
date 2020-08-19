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
