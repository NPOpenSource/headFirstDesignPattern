//
//  PancakeHouseMenu.m
//  designpattern
//
//  Created by glodon on 2022/1/5.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "PancakeHouseMenu.h"
#import "MenuItem.h"
#import "PancakeHouseMenuIterator.h"

@interface PancakeHouseMenu ()

@property (nonatomic, strong) NSMutableArray *menuItems;

@end

@implementation PancakeHouseMenu
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.menuItems = [NSMutableArray array];
        for (int i=0; i<4; i++) {
            [self addItemWithName:[NSString stringWithFormat:@"PancakeHouseMenu-a-%d",i] des:[NSString stringWithFormat:@"PancakeHouseMenu-a-des-%d",i] vegetarion:i%2==0 price:2.99+i];
        }
    }
    return self;
}

- (void)addItemWithName:(NSString *)name des:(NSString *)des vegetarion:(BOOL)vegetarion price:(double)price {
    MenuItem *item = [[MenuItem alloc]initWithName:name des:des vegetarion:vegetarion price:price];
    [self.menuItems addObject:item];
}


- (id<MenuIterator>)createIterator {
    return [[PancakeHouseMenuIterator alloc]initWithItems:self.menuItems];
}


@end
