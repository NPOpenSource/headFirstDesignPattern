//
//  CurrentConditionsDisplayNew.m
//  观察者模式
//
//  Created by glodon on 2021/12/27.
//

#import "CurrentConditionsDisplayNew.h"
#import "WeatherDataNew.h"

@interface CurrentConditionsDisplayNew ()

@property (nonatomic, assign) float temperature;
@property (nonatomic, assign) float humidity;
@property (nonatomic, strong) Observerable *observerable;

@end

@implementation CurrentConditionsDisplayNew

- (instancetype)initWithObserverable:(Observerable *)oberserable {
    self = [super init];
    if (self) {
        self.observerable = oberserable;
        [oberserable registerObserver:self];
    }
    return self;
}
- (void)update:(Observerable *)o arg:(id)arg {
    if ([o isKindOfClass:[WeatherDataNew class]]) {
        WeatherDataNew *w = o;
        self.temperature = w.temperature;
        self.humidity = w.humidity;
        [self display];
    }
}

- (void)display {
    NSLog(@"[currentcontions]temp:%.1f F degrees and %.1f %% humidity",self.temperature,self.humidity);
}

@end
