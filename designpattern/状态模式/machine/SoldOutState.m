//
//  SoldOutState.m
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "SoldOutState.h"
#import "GumbalMachine.h"

@interface SoldOutState ()

@property (nonatomic, strong) GumbalMachine *machine;

@end

@implementation SoldOutState

- (instancetype)initWithMachine:(GumbalMachine *)machine
{
    self = [super init];
    if (self) {
        self.machine = machine;
    }
    return self;
}

- (void)insertQuarter {
    NSLog(@"you can't insert a quarter ,the machine is sold out");
}

- (void)ejectQuarter {
    NSLog(@"you can't eject, you havn't inserted a quarter yet");
}

- (void)turnCrank {
    NSLog(@"you turned, but there are no gumballs");
}

- (void)dispense {
    NSLog(@"no gumball dispensed");
}

@end
