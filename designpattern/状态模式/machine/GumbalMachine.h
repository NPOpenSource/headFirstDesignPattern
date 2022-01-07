//
//  GumbalMachine.h
//  designpattern
//
//  Created by glodon on 2022/1/7.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HasQuarterState.h"
#import "SoldOutState.h"
#import "SoldState.h"
#import "NoQuarterState.h"
#import "WinnerState.h"

NS_ASSUME_NONNULL_BEGIN

@interface GumbalMachine : NSObject

@property (nonatomic, assign) int count;
@property (nonatomic, strong) id<State> state;
@property (nonatomic, strong) HasQuarterState *hasQuarterState;
@property (nonatomic, strong) SoldOutState *soldOutState;
@property (nonatomic, strong) SoldState *soldState;
@property (nonatomic, strong) NoQuarterState *noQuarterState;
@property (nonatomic, strong) WinnerState *winnerState;

- (instancetype)initCount:(int)count;
- (void)insertQuarter;
- (void)ejectQuarter;
- (void)turnCrank;
- (void)dispense;

- (void)releaseBall;

@end

NS_ASSUME_NONNULL_END
