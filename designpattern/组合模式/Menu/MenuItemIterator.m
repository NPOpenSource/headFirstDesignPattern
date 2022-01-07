//
//  MenuItemIterator.m
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "MenuItemIterator.h"

@implementation MenuItemIterator

- (instancetype)initWithMenuItems:(NSArray *)items
{
    self = [super init];
    if (self) {
        self.items = items;
    }
    return self;
}

- (bool)hasNext {
    if (self.position<self.items.count) {
        return YES;
    }
    return NO;
}

- (MenuComponent *)next {
    MenuComponent *item = self.items[self.position];
    self.position++;
    return item;
}

@end
