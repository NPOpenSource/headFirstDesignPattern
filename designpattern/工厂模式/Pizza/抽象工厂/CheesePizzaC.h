//
//  CheesePizza.h
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "Pizza.h"
#import "PizzaIngredientFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheesePizzaC : Pizza

- (instancetype)initWithFactory:(id<PizzaIngredientFactory>)factory;

@end

NS_ASSUME_NONNULL_END
