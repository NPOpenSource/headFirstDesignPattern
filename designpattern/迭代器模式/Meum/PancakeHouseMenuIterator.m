//
//  PancakeHouseMenuIterator.m
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "PancakeHouseMenuIterator.h"

@interface PancakeHouseMenuIterator()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, assign) int postion;

@end

@implementation PancakeHouseMenuIterator

- (instancetype)initWithItems:(NSArray *)items {
    self = [super init];
    if (self) {
        self.items = items;
    }
    return self;
}

-(bool)hasNext {
    if (self.postion<self.items.count) {
        return YES;
    }
    return NO;
}

- (MenuItem *)next {
    MenuItem *item = self.items[self.postion];
    self.postion++;
    return item;
}

@end
