//
//  CompositeIterator.m
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "CompositeIterator.h"
#import "MenuComponent.h"
#import "Menu.h"

@interface CompositeIterator ()

@property (nonatomic, strong) NSMutableArray *stack;

@end

@implementation CompositeIterator

- (instancetype)initWithIterator:(id<MenuIteratorNew>)iterator {
    self = [super init];
    if (self) {
        self.stack = [NSMutableArray array];
        [self.stack addObject:iterator];
    }
    return self;
}

- (MenuComponent *)next {
    if (self.hasNext) {
        id<MenuIteratorNew> iterator  = self.stack.lastObject;
        MenuComponent *component = iterator.next;
        if ([component isKindOfClass:Menu.class]) {
            [self.stack addObject:component.createIterator];
        }
        return component;
    }
    return nil;
}

- (bool)hasNext {
    if (!self.stack.count) {
        return NO;
    } else {
        id<MenuIteratorNew> iterator  = self.stack.lastObject;
        if (!iterator.hasNext) {
            [self.stack removeLastObject];
            return [self hasNext];;
        } else {
            return YES;
        }
    }
}

@end
