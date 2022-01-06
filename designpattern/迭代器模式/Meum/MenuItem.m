//
//  MenuItem.m
//  designpattern
//
//  Created by glodon on 2022/1/5.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem

- (instancetype)initWithName:(NSString *)name des:(NSString *)des vegetarion:(BOOL)vegetarion price:(double)price {
    self = [super init];
    if (self) {
        self.name = name;
        self.des = des;
        self.vegetarian = vegetarion;
        self.price = price;
    }
    return self;
}

@end
