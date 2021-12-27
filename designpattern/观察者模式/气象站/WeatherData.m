//
//  WeatherData.m
//  观察者模式
//
//

#import "WeatherData.h"

@interface WeatherData ()

@property (nonatomic, strong) NSMutableArray<id<Observer>> *observers;
@property (nonatomic, assign) float temperature;
@property (nonatomic, assign) float humidity;
@property (nonatomic, assign) float pressure;

@end

@implementation WeatherData

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.observers = [NSMutableArray array];
    }
    return self;
}

- (void)registerObserver:(id<Observer>)observer {
    [self.observers addObject:observer];
}

- (void)removeObserver:(id<Observer>)observer {
    if ([self.observers containsObject:observer]) {
        [self.observers removeObject:observer];
    }
}

- (void)notifyObservers {
    for (id<Observer> observer in self.observers) {
        [observer updateTemp:self.temperature humidity:self.humidity pressure:self.pressure];
    }
}

- (void)measurementsChanged {
    [self notifyObservers];
}

- (void)setmeasurementsTemperature:(float)temperature humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temperature;
    self.humidity = humidity;
    self.pressure = pressure;
    [self measurementsChanged];
}

@end
