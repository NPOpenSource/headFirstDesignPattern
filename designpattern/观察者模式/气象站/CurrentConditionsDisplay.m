//
//  CurrentConditionsDisplay.m
//  观察者模式
//
//  Created by glodon on 2021/12/27.
//

#import "CurrentConditionsDisplay.h"

@interface CurrentConditionsDisplay ()

@property (nonatomic, assign) float temperature;
@property (nonatomic, assign) float humidity;
@property (nonatomic, strong) id<Subject> subject;

@end

@implementation CurrentConditionsDisplay

- (instancetype)initWithSubject:(id<Subject>)subject {
    self = [super init];
    if (self) {
        self.subject = subject;
        [subject registerObserver:self];
    }
    return self;
}

- (void)updateTemp:(float)temp humidity:(float)humidity pressure:(float)pressure {
    self.temperature = temp;
    self.humidity = humidity;
    [self display];
}

- (void)display {
    NSLog(@"[currentcontions]temp:%.1f F degrees and %.1f %% humidity",self.temperature,self.humidity);
}

@end
