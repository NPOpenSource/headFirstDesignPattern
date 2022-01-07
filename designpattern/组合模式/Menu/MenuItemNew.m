//
//  MenuItemNew.m
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "MenuItemNew.h"
#import "NullIterator.h"

@implementation MenuItemNew

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

- (void)print {
    printf("%s",self.name.UTF8String);
    if (self.vegetarian) {
        printf("(v)");
    }
    printf(", %.2f",self.price);
    printf("   ---  %s\n",self.des.UTF8String);
}

- (id<MenuIteratorNew>)createIterator {
    return [NullIterator new];
}

@end
