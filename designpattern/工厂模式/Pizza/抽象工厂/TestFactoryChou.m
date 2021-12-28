//
//  TestFactoryChou.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CHPizzaStore.h"

//__attribute__((constructor))
static void beforeMain(void) {
    CHPizzaStore *npstore = [CHPizzaStore new];
    [npstore orderPizza:@"cheese"];
}

