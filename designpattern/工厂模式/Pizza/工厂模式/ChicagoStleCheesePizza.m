//
//  ChicagoStleCheesePizza.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "ChicagoStleCheesePizza.h"

@implementation ChicagoStleCheesePizza

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.toppings addObject:@"Shredded Mozzarella Cheese"];
    }
    return self;
}

- (NSString *)name {
    return @"Chicago Style Deep Dish Cheese Pizza";
}

- (void)cut {
    NSLog(@"cutting the pizza into square slices");
}

@end
