//
//  HasQuarterState.m
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "HasQuarterState.h"
#import "GumbalMachine.h"

@interface HasQuarterState ()

@property (nonatomic, strong) GumbalMachine *machine;

@end

@implementation HasQuarterState

- (instancetype)initWithMachine:(GumbalMachine *)machine
{
    self = [super init];
    if (self) {
        self.machine = machine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"you can't insert anthor quarter");
}

- (void)ejectQuarter {
    NSLog(@"quarter returned");
    self.machine.state = self.machine.noQuarterState;
}

- (void)turnCrank {
    NSLog(@"youi turned...");
    int winner = random()%10;
    if (winner>5 && self.machine.count>1) {
        self.machine.state = self.machine.winnerState;
    } else {
        self.machine.state = self.machine.soldState;
    }
}

- (void)dispense {
    NSLog(@"no gunball dispensed");
}

@end
