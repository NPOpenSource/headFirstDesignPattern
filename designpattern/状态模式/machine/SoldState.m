//
//  SoldState.m
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "SoldState.h"
#import "GumbalMachine.h"

@interface SoldState ()

@property (nonatomic, strong) GumbalMachine *machine;

@end

@implementation SoldState

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
    [self.machine releaseBall];
    if (self.machine.count>0) {
        self.machine.state = self.machine.noQuarterState;
    } else {
        NSLog(@"Oops, out of gumballs!");
        self.machine.state = self.machine.soldOutState;
    }
}

@end

