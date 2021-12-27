//
//  testObservable.m
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import "testObservable.h"
#import "CurrentConditionsDisplay.h"
#import "WeatherData.h"
#import "WeatherDataNew.h"
#import "CurrentConditionsDisplayNew.h"

//__attribute__((constructor))
static void beforeMain(void) {
    WeatherData *weatherData = [WeatherData new];
    CurrentConditionsDisplay *ccd = [[CurrentConditionsDisplay alloc]initWithSubject:weatherData];
    [weatherData setmeasurementsTemperature:80 humidity:65 pressure:30.f];
    WeatherDataNew *newW = [WeatherDataNew new];
    CurrentConditionsDisplayNew *ccdn = [[CurrentConditionsDisplayNew alloc]initWithObserverable:newW];
    [newW setmeasurementsTemperature:80 humidity:65 pressure:30.f];
}

