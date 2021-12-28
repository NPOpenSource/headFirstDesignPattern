//
//  CondimentDecorator.m
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import "CondimentDecorator.h"

@implementation CondimentDecorator

- (instancetype)initWithBeverage:(Beverage *)beverage {
    self = [super init];
    if (self) {
        self.beverage = beverage;
    }
    return self;
}

@end
