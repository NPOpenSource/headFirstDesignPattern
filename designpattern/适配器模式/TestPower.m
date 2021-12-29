//
//  TestRemote.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPower.h"
#import "CObjectPower.h"

__attribute__((constructor))
static void beforeMain(void) {
    [[CPower new] twoStep];
    ///对象适配
    [[CObjectPower new]twoStep];
    
}

