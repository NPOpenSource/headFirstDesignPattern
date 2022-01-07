//
//  Waitress.h
//  designpattern
//
//  Created by glodon on 2022/1/6.
//  Copyright © 2022 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MenuComponent.h"

NS_ASSUME_NONNULL_BEGIN

@interface Waitress : NSObject

@property (nonatomic, strong) MenuComponent *allMenus;

- (instancetype)initWithMenu:(MenuComponent *)allMenus;
- (void)printMenu;
- (void)printVegetarianMenu;

@end

NS_ASSUME_NONNULL_END
