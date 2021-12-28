//
//  ChPizzaIngredientFactory.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "ChPizzaIngredientFactory.h"
#import "ThinCrustDough.h"
#import "MarinaraSouce.h"

@implementation ChPizzaIngredientFactory

- (id<Sauce>)createSouce {
    return [MarinaraSouce new];
}

- (id<Dough>)createDough {
    return [ThinCrustDough new];
}

@end
