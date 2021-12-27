//
//  Subject.h
//  观察者模式
//
//

#import <Foundation/Foundation.h>
#import "Observer.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Subject <NSObject>

- (void)registerObserver:(id<Observer>)observer;
- (void)removeObserver:(id<Observer>)observer;
- (void)notifyObservers;


@end

NS_ASSUME_NONNULL_END
