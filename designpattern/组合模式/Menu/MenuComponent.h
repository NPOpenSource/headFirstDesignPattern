//
//  MenuComponent.h
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuIteratorNew.h"

NS_ASSUME_NONNULL_BEGIN

@interface MenuComponent : NSObject

- (void)add:(MenuComponent *)component;
- (void)remove:(MenuComponent *)component;
- (MenuComponent *)getChild:(NSInteger)index;
- (void)print;

- (id<MenuIteratorNew>)createIterator;

@end

NS_ASSUME_NONNULL_END
