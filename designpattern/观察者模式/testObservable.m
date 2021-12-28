//
//  testObservable.m
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
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

#import "WeChatServer.h"
#import "User.h"
//__attribute__((constructor))
static void testBBSService(void) {
    WeChatServer * server=  [WeChatServer new];
    User * userOne = [User new];
    User * userTwo = [User new];
    [server registerObserver:userOne];
    [server setMessage:@"博雅论坛"];
    [server registerObserver:userTwo];
    [server setMessage:@"博雅论坛最新消息"];
    [server removeObserver:userOne];
    [server setMessage:@"博雅论坛结束了"];
}

