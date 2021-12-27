//
//  MiniDuck.m
//  策略模式
//
//  Created by glodon on 2021/12/27.
//

#import "MiniDuck.h"
#import "FlyyWithWings.h"
#import "Quack.h"

@implementation MiniDuck

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"小鸭子";
        self.flyBehavior = [FlyyWithWings new];
        self.quackBehavior = [Quack new];
    }
    return self;
}

@end
