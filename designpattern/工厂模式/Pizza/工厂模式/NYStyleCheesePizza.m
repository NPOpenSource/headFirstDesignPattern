//
//  NYStyleCheesePizza.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "NYStyleCheesePizza.h"

@implementation NYStyleCheesePizza

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self.toppings addObject:@"Grated reggiano cheese"];
    }
    return self;
}

- (NSString *)name {
    return @"NY Style sauce and cheese pizza";
}

@end
