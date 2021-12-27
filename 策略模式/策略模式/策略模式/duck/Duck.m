//
//  Duck.m
//  策略模式
//
//  Created by glodon on 2021/12/27.
//

#import "Duck.h"

@implementation Duck

- (void)swim {
    NSLog(@"all ducks 都会游泳");
}

- (void)display {
    NSLog(@"我是%@",self.name);
    [self.flyBehavior fly];
    [self.quackBehavior quack];
}

- (void)performQuack {
    
}

- (void)performFly {
    
}

@end
