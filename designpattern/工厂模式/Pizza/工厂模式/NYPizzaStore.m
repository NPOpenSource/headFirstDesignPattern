//
//  NYPizzaStore.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "NYPizzaStore.h"
#import "NYStyleCheesePizza.h"

@implementation NYPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza = nil;
    if ([type isEqualToString:@"cheese"]) {
        pizza = [NYStyleCheesePizza new];
    }
    return pizza;
}

@end
