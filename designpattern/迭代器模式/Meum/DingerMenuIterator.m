//
//  DingerMenuIterator.m
//  designpattern
//
//  Created by glodon on 2022/1/5.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "DingerMenuIterator.h"

@interface DingerMenuIterator()

@property (nonatomic, strong) NSMutableDictionary *items;
@property (nonatomic, assign) int postion;

@end

@implementation DingerMenuIterator

- (instancetype)initWithItems:(NSMutableDictionary *)items {
    self = [super init];
    if (self) {
        self.items = items;
    }
    return self;
}

-(bool)hasNext {
    if ([self.items objectForKey:@(self.postion)]) {
        return YES;
    }
    return NO;
}

- (MenuItem *)next {
    MenuItem *item = [self.items objectForKey:@(self.postion)];
    self.postion++;
    return item;
}

@end
