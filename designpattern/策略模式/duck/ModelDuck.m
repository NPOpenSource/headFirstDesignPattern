//
//  ModelDuck.m
//  策略模式
//
//  Created by glodon on 2021/12/27.
//

#import "ModelDuck.h"
#import "FlyNoWay.h"
#import "MuteQuack.h"

@implementation ModelDuck

- (instancetype)init {
    self = [super init];
    if (self) {
        self.name = @"模型鸭子";
        self.flyBehavior = [FlyNoWay new];
        self.quackBehavior = [MuteQuack new];
    }
    return self;
}

@end
