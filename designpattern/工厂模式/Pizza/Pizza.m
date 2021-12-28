//
//  Pizza.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "Pizza.h"


@implementation Pizza

- (void)prepare {
    NSLog(@"preparing%@",self.name);
    NSLog(@"Tossing dpigj...");
    NSLog(@"Adding sauce...");
    NSLog(@"Adding toppings:");
    for (NSString *top in self.toppings) {
        NSLog(@"  %@",top);
    }
}

- (void)bake {
    NSLog(@"bake for 25 minute");
}

- (void)cut {
    NSLog(@"cutint pizza");
}

- (void)box {
    NSLog(@"box");
}

- (NSMutableArray *)toppings {
    if (!_toppings) {
        _toppings = [NSMutableArray array];
    }
    return _toppings;
}

@end
