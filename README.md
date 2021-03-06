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
7. 只和你的密友谈话(最少知识原则)
8. 好莱坞原则--> 别打电话给我们,我会打电话给你 低层组件不能依赖高层组件
9. 一个类应该只有一个引起变化的原因(设计原则)

当一个模块或者一个类被设计成只支持一组相关的功能时,我们说他高内聚


> 将一些步骤`延迟` 到子类

### 松耦合的威力

当两个对象之间松耦合,他们依然可以交互,但是不太清楚彼此的细节


> 继承是在编译时静态决定的,所有的子类都会继承相同的行为. 

我们需要把精力放在最后可能改变的地方,使用开放-关闭原则



* [策略模式](./designpattern/策略模式)

* [观察者模式](./designpattern/观察者模式)

* [装饰模式](./designpattern/装饰模式)

* [工厂模式](./designpattern/工厂模式)

* [单例模式](./designpattern/单例模式)

* [命令模式](./designpattern/命令模式)

* [适配器模式](./designpattern/适配器模式)

* [外观模式](./designpattern/外观模式)

* [模板方法模式](./designpattern/模板方法模式)

* [迭代器模式](./designpattern/迭代器模式)

* [组合模式](./designpattern/迭代器模式)

* [状态模式](./designpattern/状态模式)

# 总结

1. 策略模式  核心 --> 持有一组算法族,(组合)
2. 观察者模式  核心 --> 一对多,可以主动提供数据和主动拉取数据
3. 装饰者  核心--> 持有自已,并实现自己的api
4. 工厂 简单工厂不是设计模式 ,工厂模式 核心是继承  ,抽象工厂 可以认为工厂是抽象工厂的特例. 提供多个产品
5. 单例  核心是 唯一
6. 适配器 核心是 持有别人返回自己(需求者要的target)
7. 命令模式  核心是持有命令  (组合)
8. 外观模式 核心是组装子系统的api,成高级api ,更易用
9. 模板方法模式 封装算法或者步骤,子类重载--- 关键词`继承``子类重载`
10. 迭代器 用于集合的遍历
11. 组合模式 关键是`树`
