//
//  MenuItemNew.h
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface MenuItemNew : MenuComponent


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *des;
@property (nonatomic, assign) bool vegetarian;
@property (nonatomic, assign) double price;

- (instancetype)initWithName:(NSString *)name des:(NSString *)des vegetarion:(BOOL)vegetarion price:(double)price;

@end

NS_ASSUME_NONNULL_END
