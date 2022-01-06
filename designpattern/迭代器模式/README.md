#  迭代器模式

> 迭代器一般情况下用一次创建一次

# 定义
提供一种方法顺序访问一个聚合对象中各个元素, 而又无须暴露该对象的内部表示。

***
# 解决问题
不同的方式来遍历整个整合对象。

***
# 何时使用
遍历一个聚合对象。

***
# 关键代码
定义接口：hasNext, next。
***
# 优缺点
###优点
1、它支持以不同的方式遍历一个聚合对象。
2、迭代器简化了聚合类。 
3、在同一个聚合上可以有多个遍历。 
4、在迭代器模式中，增加新的聚合类和迭代器类都很方便，无须修改原有代码。
###缺点
由于迭代器模式将存储数据和遍历数据的职责分离，增加新的聚合类需要对应增加新的迭代器类，类的个数成对增加，这在一定程度上增加了系统的复杂性。

***
# 使用场景
 1、访问一个聚合对象的内容而无须暴露它的内部表示。 
2、需要为聚合对象提供多种遍历方式。
 3、为遍历不同的聚合结构提供一个统一的接
***
# 注意事项
迭代器模式就是分离了集合对象的遍历行为，抽象出一个迭代器类来负责，这样既可以做到不暴露集合的内部结构，又可让外部代码透明地访问集合内部的数据。

***
#模拟场景
洗苹果
***
# 迭代器UML 图


# 简单代码
```
#import <Foundation/Foundation.h>

@protocol Iterator <NSObject>
-(void)setIteratorArr:(NSArray*)array;
-(BOOL)hasNext;
-(id)next;
@end

```

```
#import <Foundation/Foundation.h>
#import "Iterator.h"
@interface AppleIterator : NSObject<Iterator>

@end

```
```
#import "AppleIterator.h"

@interface AppleIterator()
@property (nonatomic,assign) int index;
@property (nonatomic,strong) NSMutableArray *array;
@end

@implementation AppleIterator

-(void)setIteratorArr:(NSArray *)array{
    self.array = array;
}


-(BOOL)hasNext{
    if (self.index<self.array.count) {
        return YES;
    }
    return NO;
}
-(id)next{
    if (self.hasNext) {
        return  self.array[self.index++];
    }
    return nil;
}
@end
```
```
#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Iterator.h"
@interface Persion : NSObject
@property (nonatomic,strong) id<Iterator> appleIterator;

@end

```
```

#import "Persion.h"
#import "AppleIterator.h"
@interface Persion()
@property (nonatomic,strong) NSMutableArray * apples;
@end
@implementation Persion
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.apples=[NSMutableArray array];
        for (int i=0; i<10; i++) {
            [self.apples addObject:@"apple"];
        }
        self.appleIterator = [AppleIterator new];
        [self.appleIterator setIteratorArr:self.apples];
    }
    return self;
}
@end
```
测试代码
```
 Persion *per=  [Persion new];
    while (per.appleIterator.hasNext) {
        NSLog(@"洗 %@",[per.appleIterator next])   ;
    };
```
测试结果
```
2018-04-10 18:33:55.250585+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.250722+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.250840+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.250939+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.251038+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.251265+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.251357+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.251438+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.251528+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
2018-04-10 18:33:55.251623+0800 行为型设计模式-迭代器模式[60607:8412059] 洗 apple
```

[借鉴博客](http://www.runoob.com/design-pattern/iterator-pattern.html)




