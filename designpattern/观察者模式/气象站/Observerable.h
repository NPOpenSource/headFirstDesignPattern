//
//  Observerable.h
//  
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

NS_ASSUME_NONNULL_BEGIN

@interface Observerable : NSObject

@property (nonatomic, assign) BOOL changed;

- (void)registerObserver:(id<Observer>)observer;
- (void)removeObserver:(id<Observer>)observer;
- (void)notifyObservers;
- (void)notifyObserversForData:(id)data;

@end

NS_ASSUME_NONNULL_END
