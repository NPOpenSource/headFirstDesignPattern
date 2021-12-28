# headFirstDesignPattern



### 基础

抽象

封装

多态

继承

###设计原则

1. 找出应用中可能需要变化之处,把它们独立出来,不要和那些不需要变化的代码混淆在一起.
2. 针对接口编程,而不是针对实现编程
3. 多用组合,少用继承
4.  为了交互对象之间的松耦合设计而努力
5. 类应该对扩展开放,对修改关闭.(开放-关闭原则)
6. 要依赖抽象,不要依赖具体类.(依赖倒置原则)
> 不能让高层组件依赖底层组件,而且不管高层组件还是底层组件,都应该依赖抽象



### 松耦合的威力

当两个对象之间松耦合,他们依然可以交互,但是不太清楚彼此的细节


> 继承是在编译时静态决定的,所有的子类都会继承相同的行为. 

我们需要把精力放在最后可能改变的地方,使用开放-关闭原则



[策略模式](./designpattern/策略模式)
[观察者模式](./designpattern/观察者模式)
[观察者模式](./designpattern/装饰模式)
[观察者模式](./designpattern/工厂模式)
