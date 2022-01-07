//
//  WinnerState.m
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "WinnerState.h"

#import "GumbalMachine.h"

@interface WinnerState ()

@property (nonatomic, strong) GumbalMachine *machine;

@end

@implementation WinnerState

- (instancetype)initWithMachine:(GumbalMachine *)machine
{
    self = [super init];
    if (self) {
        self.machine = machine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"please wait ,we're already giving you  a gumball");
}

- (void)ejectQuarter {
    NSLog(@"sorry ,you already t urned the crank");
}

- (void)turnCrank {
    NSLog(@"turning twice doesn't get you another gumball!");
}

- (void)dispense {
    NSLog(@"you're a winner! you get two gunballs for your quarter");
    [self.machine releaseBall];
    if (self.machine.count==0) {
        self.machine.state = self.machine.soldOutState;
    } else {
        [self.machine releaseBall];
        if (self.machine.count>0) {
            self.machine.state = self.machine.noQuarterState;
        } else {
            NSLog(@"Oops, out of gumballs!");
            self.machine.state = self.machine.soldState;
        }
    }
}

@end
