//
//  DinerMenu.m
//  designpattern
//
//  Created by glodon on 2022/1/5.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "DinerMenu.h"
#import "MenuItem.h"

@interface DinerMenu ()

@property (nonatomic, strong) NSMutableDictionary *menuItems;


@end

@implementation DinerMenu

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.menuItems = [NSMutableDictionary dictionary];
        for (int i=0; i<4; i++) {
            [self addItemWithName:[NSString stringWithFormat:@"DinerMenu-a-%d",i] des:[NSString stringWithFormat:@"DinerMenu-a-des-%d",i] vegetarion:i%2==0 price:5.99+i atIndex:i];
        }
    }
    return self;
}

- (void)addItemWithName:(NSString *)name des:(NSString *)des vegetarion:(BOOL)vegetarion price:(double)price atIndex:(NSInteger)index {
    MenuItem *item = [[MenuItem alloc]initWithName:name des:des vegetarion:vegetarion price:price];
    [self.menuItems setObject:item forKey:@(index)];
}


- (id<MenuIterator>)createIterator {
    return [[DingerMenuIterator alloc]initWithItems:self.menuItems];
}

@end
