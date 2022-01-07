//
//  Waitress.m
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "Waitress.h"
#import "Menu.h"

@implementation Waitress

- (instancetype)initWithMenu:(MenuComponent *)allMenus {
    self = [super init];
    if (self) {
        self.allMenus = allMenus;
    }
    return self;
}

- (void)printMenu {
    [self.allMenus print];
}

- (void)printVegetarianMenu {
    id<MenuIteratorNew> iterator = self.allMenus.createIterator;
    while (iterator.hasNext) {
        MenuComponent *m = iterator.next;
        if ([m isKindOfClass:[Menu class]]) {
            NSLog(@"[menu]%@",((Menu*)m).name);
        } else {
            NSLog(@"[item]%@",m.className);
        }
        [m print];
    }
}

@end
