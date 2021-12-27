//
//  WeatherData.h
//  观察者模式
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
#import "Subject.h"

NS_ASSUME_NONNULL_BEGIN

@interface WeatherData : NSObject<Subject>

@property (nonatomic, assign, readonly) float temperature;
@property (nonatomic, assign, readonly) float humidity;
@property (nonatomic, assign, readonly) float pressure;
- (void)setmeasurementsTemperature:(float)temperature humidity:(float)humidity pressure:(float)pressure;

@end

NS_ASSUME_NONNULL_END
