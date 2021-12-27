//
//  Observerable.m
//  
//
//  Created by glodon on 2021/12/27.
//

#import "Observerable.h"
@interface Observerable ()

@property (nonatomic, strong) NSMutableArray<id<Observer>> *observers;

@end

@implementation Observerable

- (void)registerObserver:(id<Observer>)observer {
    [self.observers addObject:observer];
}

- (void)removeObserver:(id<Observer>)observer {
    [self.observers removeObject:observer];
}

- (void)notifyObservers {
    [self notifyObserversForData:nil];
}

- (void)notifyObserversForData:(id)data {
    if (self.changed) {
        for (id<Observer> observer in self.observers) {
            [observer update:self arg:data];
        }
        self.changed = NO;
    }
}

- (NSMutableArray<id<Observer>> *)observers {
    if (!_observers) {
        self.observers = [NSMutableArray array];
    }
    return _observers;
}

@end
