//
//  CHPizzaStore.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "CHPizzaStore.h"
#import "CheesePizzaC.h"
#import "PizzaIngredientFactory.h"
#import "ChPizzaIngredientFactory.h"

@interface CHPizzaStore ()

@property (nonatomic, strong) id<PizzaIngredientFactory> factory;


@end

@implementation CHPizzaStore

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.factory = [ChPizzaIngredientFactory new];
    }
    return self;
}

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza = nil;
    
    if ([type isEqualToString:@"cheese"]) {
        pizza = [[CheesePizzaC alloc]initWithFactory:self.factory];
    }
    return pizza;
}

@end
