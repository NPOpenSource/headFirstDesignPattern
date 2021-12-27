//
//  main.m
//  观察者模式
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
#import "CurrentConditionsDisplay.h"
#import "WeatherData.h"
#import "WeatherDataNew.h"
#import "CurrentConditionsDisplayNew.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        WeatherData *weatherData = [WeatherData new];
        CurrentConditionsDisplay *ccd = [[CurrentConditionsDisplay alloc]initWithSubject:weatherData];
        [weatherData setmeasurementsTemperature:80 humidity:65 pressure:30.f];
        
        
        WeatherDataNew *newW = [WeatherDataNew new];
        CurrentConditionsDisplayNew *ccdn = [[CurrentConditionsDisplayNew alloc]initWithObserverable:newW];
        [newW setmeasurementsTemperature:80 humidity:65 pressure:30.f];
    }
    return 0;
}
