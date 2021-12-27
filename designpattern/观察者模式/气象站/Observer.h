//
//  Observer.h
//  观察者模式
//
//

#import <Foundation/Foundation.h>
@class Observerable;

NS_ASSUME_NONNULL_BEGIN

@protocol Observer <NSObject>

///老的api使用
- (void)updateTemp:(float)temp humidity:(float)humidity pressure:(float)pressure;

///新的api使用
- (void)update:(Observerable *)o arg:(id)arg;
@end

NS_ASSUME_NONNULL_END
