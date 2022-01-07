//
//  NoQuarterState.m
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "NoQuarterState.h"
#import "GumbalMachine.h"

@interface NoQuarterState ()

@property (nonatomic, strong) GumbalMachine *machine;

@end

@implementation NoQuarterState

- (instancetype)initWithMachine:(GumbalMachine *)machine
{
    self = [super init];
    if (self) {
        self.machine = machine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"you insert a quarter");
    self.machine.state = self.machine.hasQuarterState;
}

- (void)ejectQuarter {
    NSLog(@"you can't insert a quarter");
}

- (void)turnCrank {
    NSLog(@"you turned ,but there's no quarter");
}

- (void)dispense {
    NSLog(@"you need to pay first");
}

@end
