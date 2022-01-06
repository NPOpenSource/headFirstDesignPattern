//
//  PancakeHouseMenu.h
//  designpattern
//
//  Created by glodon on 2022/1/5.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuIterator.h"

NS_ASSUME_NONNULL_BEGIN

@interface PancakeHouseMenu : NSObject

- (id<MenuIterator>)createIterator;

@end

NS_ASSUME_NONNULL_END
