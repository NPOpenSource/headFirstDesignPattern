//
//  Menu.m
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import "Menu.h"
#import "CompositeIterator.h"
#import "MenuItemIterator.h"

@interface Menu ()

@property (nonatomic, strong) id<MenuIteratorNew> iterator;

@end

@implementation Menu

- (instancetype)initWithName:(NSString *)name andDes:(NSString *)desc {
    self = [super init];
    if (self) {
        self.menuComponents = [NSMutableArray array];
        self.desc = desc;
        self.name = name;
    }
    return self;
}

- (void)add:(MenuComponent *)component {
    [self.menuComponents addObject:component];
}

-(void)remove:(MenuComponent *)component {
    [self.menuComponents removeObject:component];
}

- (MenuComponent *)getChild:(NSInteger)index {
    return [self.menuComponents objectAtIndex:index];
}

- (void)print {
    printf("\n%s",self.name.UTF8String);
    printf(", %s\n",self.desc.UTF8String);
    printf("------------------\n");
    id<MenuIteratorNew> iterator = self.iterator;
    while (iterator.hasNext) {
        MenuComponent *obj = iterator.next;
        [obj print];
    }
}

-(id<MenuIteratorNew>)createIterator {
    return [[CompositeIterator alloc]initWithIterator:self.iterator];
}

///这里注意, 迭代器不能反复遍历. 
-(id<MenuIteratorNew>)iterator {
    if (!_iterator) {
        _iterator = [[MenuItemIterator alloc]initWithMenuItems:self.menuComponents];
    }
    return _iterator;
}

@end
