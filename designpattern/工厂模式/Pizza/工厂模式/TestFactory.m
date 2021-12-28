//
//  TestFactory.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PizzaStore.h"
#import "NYPizzaStore.h"
#import "ChicagoPizzaStore.h"

//__attribute__((constructor))
static void beforeMain(void) {
    NYPizzaStore *npstore = [NYPizzaStore new];
    [npstore orderPizza:@"cheese"];
    
    ChicagoPizzaStore *store = [ChicagoPizzaStore new];
    [store orderPizza:@"cheese"];
}

