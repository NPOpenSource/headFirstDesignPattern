//
//  WeatherDataNew.m
//  观察者模式
//
//  Created by glodon on 2021/12/27.
//

#import "WeatherDataNew.h"


@interface WeatherDataNew ()

@property (nonatomic, assign) float temperature;
@property (nonatomic, assign) float humidity;
@property (nonatomic, assign) float pressure;

@end

@implementation WeatherDataNew

- (void)measurementsChanged {
    self.changed = YES;
    [self notifyObservers];
}

- (void)setmeasurementsTemperature:(float)temperature humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temperature;
    self.humidity = humidity;
    self.pressure = pressure;
    [self measurementsChanged];
}

@end
