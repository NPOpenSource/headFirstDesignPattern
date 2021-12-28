//
//  SimplePizzaStore.h
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimplePizzaFactory.h"
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface SimplePizzaStore : NSObject

- (instancetype)initWithFactory:(SimplePizzaFactory *)factory;
- (Pizza *)orderPizza:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
