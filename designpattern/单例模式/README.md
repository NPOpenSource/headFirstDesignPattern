#  单例模式

创建独一无二的,只有一个实例对象的入场券.

单例可以在使用的时候创建对象

确保一个类只有一个实例,来提供一个全局的访问点


# 概述

        单例模式，是一种常用的软件设计模式。在它的核心结构中只包含一个被称为单例的特殊类。通过单例模式可以保证系统中，应用该模式的类一个类只有一个实例。即一个类只有一个对象实例（百度百科）

* * *

# 优缺点

## 优点： 

    1.在单例模式中，活动的单例只有一个实例，对单例类的所有实例化得到的都是相同的一个实例。这样就 防止其它对象对自己的实例化，确保所有的对象都访问一个实例 

    2.单例模式具有一定的伸缩性，类自己来控制实例化进程，类就在改变实例化进程上有相应的伸缩性。 

    3.提供了对唯一实例的受控访问。 

    4.由于在系统内存中只存在一个对象，因此可以 节约系统资源，当 需要频繁创建和销毁的对象时单例模式无疑可以提高系统的性能。 

    5.允许可变数目的实例。 

    6.避免对共享资源的多重占用。 

## 缺点： 

    1.不适用于变化的对象，如果同一类型的对象总是要在不同的用例场景发生变化，单例就会引起数据的错误，不能保存彼此的状态。 

    2.由于单利模式中没有抽象层，因此单例类的扩展有很大的困难。 

    3.单例类的职责过重，在一定程度上违背了“单一职责原则”。 

    4.滥用单例将带来一些负面问题，如为了节省资源将数据库连接池对象设计为的单例类，可能会导致共享连接池对象的程序过多而出现连接池溢出；如果实例化的对象长时间不被利用，系统会认为是垃圾而被回收，这将导致对象状态的丢失。

* * *

# 适用场景： 

单例模式只允许创建一个对象，因此节省内存，加快对象访问速度，因此对象需要被公用的场合适合使用，如多个模块使用同一个数据源连接对象等等。如： 

    1.需要频繁实例化然后销毁的对象。 

    2.创建对象时耗时过多或者耗资源过多，但又经常用到的对象。 

    3.有状态的工具类对象。 

    4.频繁访问数据库或文件的对象。 

* * *

#  单例模式分类：

### 饿单例模式（类加载时实例化一个对象给自己的引用），懒单例模式（调用取得实例的方法如getInstance时才会实例化对象）（java中饿单例模式性能优于懒单例模式，c++中一般使用懒单例模式） 

### 饿单例模式

优点 

    1.线程安全 

    2.在类加载的同时已经创建好一个静态对象，调用时反应速度快 

缺点 

    资源效率不高，可能getInstance()永远不会执行到，但执行该类的其他静态方法或者加载了该类（class.forName)，那么这个实例仍然初始化 

### 懒单例模式

优点： 

    避免了饿汉式的那种在没有用到的情况下创建事例，资源利用率高，不执行getInstance()就不会被实例，可以执行该类的其他静态方法。 

缺点： 

    懒汉式在单个线程中没有问题，但多个线程同事访问的时候就可能同事创建多个实例，而且这多个实例不是同一个对象，虽然后面创建的实例会覆盖先创建的实例，但是还是会存在拿到不同对象的情况。解决这个问题的办法就是加锁synchonized，第一次加载时不够快，多线程使用不必要的同步开销大。 

* * *

# ios单例模式代码

ios其实单例模式创建大家普遍习惯用GCD 来创建

```objc
@interface SingletonPattern : NSObject
+(SingletonPattern *)shareSingletonPatternManager;
-(void)print;
@end
```

```objc
@implementation SingletonPattern

static SingletonPattern * manager = nil;
+(SingletonPattern *)shareSingletonPatternManager{
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        manager = [[SingletonPattern alloc]initSingletonPattern];
    });
    return manager;
}

- (instancetype)initSingletonPattern{
    self = [super init];
    if (self) {

    }
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        assert(NO);
    }
    return self;
}

-(void)print{
    NSLog(@"单例打印");
}
@end
```



上述demo 为了防止别人new一个新的对象而不是通过shareSingletonPatternManager 方法创建获取唯一实例，我们重写了系统的-init方法。只要别人通过init方法创建实例，都将崩溃。

其实单例模式ios创建比较简单，用GCD创建并且是线程安全的。

要是自己创建单例，可就要小心线程问题，要加入线程锁。

```objc
+(SingletonPatternTwo *)shareSingletonPatternManager{
    @synchronized(self){
        if (!manager) {
            manager = [[SingletonPatternTwo alloc]initSingletonPattern];
        }
    }
    return manager;
}

- (instancetype)initSingletonPattern{
    self = [super init];
    if (self) {

    }
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        assert(NO);
    }
    return self;
}
```



上面的两种方法都是懒单例模式。

其实我们也可以实现饿单例模式

我们要借助load方法去实现，不过一般没人这么使用

```objc
static SingletonPatternThree * manager = nil;
@implementation SingletonPatternThree
+(void)load{
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        manager = [[SingletonPatternThree alloc]initSingletonPattern];
    });
}

+(SingletonPatternThree *)shareSingletonPatternManager{
    return manager;
}

- (instancetype)initSingletonPattern{
    self = [super init];
    if (self) {

    }
    return self;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        assert(NO);
    }
    return self;
}

@end
```

其实单例模式相对来说比较简单，大家都会使用。这里不做过多介绍了

