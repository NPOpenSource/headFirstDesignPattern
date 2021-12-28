//
//  ChicagoPizzaStore.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "ChicagoPizzaStore.h"
#import "ChicagoStleCheesePizza.h"

@implementation ChicagoPizzaStore

- (Pizza *)createPizza:(NSString *)type {
    Pizza *pizza = nil;
    if ([type isEqualToString:@"cheese"]) {
        pizza = [ChicagoStleCheesePizza new];
    }
    return pizza;
}

@end
