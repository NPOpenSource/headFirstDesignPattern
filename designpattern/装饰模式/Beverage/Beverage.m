//
//  Beverage.m
//  designpattern
//
//

#import "Beverage.h"

@implementation Beverage

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.desc = @"unknows beverage";
    }
    return self;
}

- (double)cost {
    return 0;
}

@end
