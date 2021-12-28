//
//  SimplePizzaStore.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "SimplePizzaStore.h"

@interface SimplePizzaStore ()

@property (nonatomic, strong) SimplePizzaFactory *factory;

@end

@implementation SimplePizzaStore

- (instancetype)initWithFactory:(SimplePizzaFactory *)factory {
    self = [super init];
    if (self) {
        self.factory = factory;
    }
    return self;
}

- (Pizza *)orderPizza:(NSString *)type {
    Pizza *pizza = nil;
    pizza = [self.factory createPizza:type];
    [pizza prepare];
    [pizza bake];
    [pizza cut];
    [pizza box];
    return pizza;
}

@end
