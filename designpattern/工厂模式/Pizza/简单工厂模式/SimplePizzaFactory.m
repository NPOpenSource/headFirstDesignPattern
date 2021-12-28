//
//  SimplePizzaFactory.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "SimplePizzaFactory.h"
#import "CheesePizza.h"
#import "PepperoniPizza.h"

@implementation SimplePizzaFactory

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza = nil;
    if ([type isEqualToString:@"cheese"]) {
        pizza = [CheesePizza new];
    } else if([type isEqualToString:@"pepperoni"]) {
        pizza = [ PepperoniPizza new];
    }
    return pizza;
}

@end
