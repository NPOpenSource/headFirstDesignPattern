//
//  PizzaIngredientFactory.h
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dough.h"
#import "Sauce.h"

NS_ASSUME_NONNULL_BEGIN

@protocol PizzaIngredientFactory <NSObject>

- (id<Dough>)createDough;
- (id<Sauce>)createSouce;

@end

NS_ASSUME_NONNULL_END
