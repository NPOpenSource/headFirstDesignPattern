//
//  PancakeHouseMenuIterator.h
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuIterator.h"
#import "MenuItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface PancakeHouseMenuIterator : NSObject<MenuIterator>

- (instancetype)initWithItems:(NSArray *)items;

@end

NS_ASSUME_NONNULL_END
