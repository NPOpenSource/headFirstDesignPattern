//
//  CheesePizza.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "CheesePizzaC.h"

@interface CheesePizzaC ()

@property (nonatomic, strong) id<PizzaIngredientFactory> factory;

@end

@implementation CheesePizzaC

- (instancetype)initWithFactory:(id<PizzaIngredientFactory>)factory {
    self = [super init];
    if (self) {
        self.factory = factory;
    }
    return self;
}

- (void)prepare {
    NSLog(@"preparing%@",self.name);
    NSLog(@"Tossing dpigj...");
    NSLog(@"dough:%@",self.factory.createDough.getName);
    NSLog(@"Adding sauce...");
    NSLog(@"souce:%@",self.factory.createSouce.getName);
    NSLog(@"Adding toppings:");
    for (NSString *top in self.toppings) {
        NSLog(@"  %@",top);
    }
}

- (NSString *)name {
    return @"sauce and cheese pizza";
}

@end
