//
//  GumbalMachine.m
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "GumbalMachine.h"

@interface GumbalMachine ()

@end

@implementation GumbalMachine

- (instancetype)initCount:(int)count {
    self = [super init];
    if (self) {
        self.count = count;
        self.soldState = [[SoldState alloc]initWithMachine:self];
        self.soldOutState = [[SoldOutState alloc]initWithMachine:self];
        self.hasQuarterState = [[HasQuarterState alloc]initWithMachine:self];
        self.noQuarterState = [[NoQuarterState alloc]initWithMachine:self];
        self.winnerState = [[WinnerState alloc]initWithMachine:self];
        self.state = self.soldState;
        if (count>0) {
            self.state = self.noQuarterState;
        }
    }
    return self;
}

- (void)insertQuarter {
    [self.state insertQuarter];
//    switch (self.state) {
//        case HAS_REQUEST:
//            NSLog(@"you can't insert another quarter");
//            break;
//        case NO_REQUEST:
//            NSLog(@"you insert a quarter");
//            self.state = HAS_REQUEST;
//            break;
//        case SOLD_OUT:
//            NSLog(@"you can't insert a quarter ,the machine is sold out");
//            break;
//        case SOLD:
//            NSLog(@"please wait,we're alerady giving you 'a gumball");
//            break;
//    }
}

- (void)ejectQuarter {
    [self.state ejectQuarter];
//    switch (self.state) {
//        case HAS_REQUEST:
//            NSLog(@"quarter returned");
//            self.state = NO_REQUEST;
//            break;
//        case NO_REQUEST:
//            NSLog(@"you haven't inserted a quarter");
//            break;
//        case SOLD:
//            NSLog(@"sorry, you already turned  the crank");
//            break;
//        case SOLD_OUT:
//            NSLog(@"you can't eject, you havn't inserted a quarter yet");
//            break;
//    }
}

- (void)turnCrank {
    [self.state turnCrank];
    [self.state dispense];
//    switch (self.state) {
//        case SOLD:
//            NSLog(@"turning twice doesn't get you another gumball!");
//            break;
//        case NO_REQUEST:
//            NSLog(@"you turned but there's no quarter");
//            break;
//        case SOLD_OUT:
//            NSLog(@"you turned, but there are no gumballs");
//            break;
//        case HAS_REQUEST:
//            NSLog(@"you turned...");
//            self.state = SOLD;
//            [self dispense];
//            break;
//    }
}

- (void)dispense {
    [self dispense];
//    switch (self.state) {
//        case SOLD:
//            NSLog(@"a gumball comes rolling out the slot");
//            self.count--;
//            if (self.count==0) {
//                NSLog(@"Oops, out of gumballs!");
//                self.state = SOLD_OUT;
//            }else {
//                self.state = NO_REQUEST;
//            }
//            break;
//        case NO_REQUEST:
//            NSLog(@"you need to pay first");
//            break;
//        case SOLD_OUT:
//            NSLog(@"no gumball dispensed");
//            break;
//        case HAS_REQUEST:
//            NSLog(@"no gumball dispensed");
//            break;
//    }
}

- (void)releaseBall {
    NSLog(@"a gumball comes rolling out the solt...");
    if (self.count!=0) {
        self.count--;
    }
}

@end
