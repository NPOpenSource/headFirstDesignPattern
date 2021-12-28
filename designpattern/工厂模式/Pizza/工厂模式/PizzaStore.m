//
//  PizzaStore.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "PizzaStore.h"

@implementation PizzaStore

- (Pizza *)orderPizza:(NSString *)type {
    Pizza *pizza = nil;
    pizza = [self createPizza:type];
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    return pizza;
}

@end
