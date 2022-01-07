//
//  MenuItemIterator.h
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuIteratorNew.h"

NS_ASSUME_NONNULL_BEGIN

@interface MenuItemIterator : NSObject<MenuIteratorNew>
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, assign) NSInteger position;

- (instancetype)initWithMenuItems:(NSArray *)items;
@end

NS_ASSUME_NONNULL_END
