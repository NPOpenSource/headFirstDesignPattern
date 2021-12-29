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

//__attribute__((constructor))
static void beforeMain(void) {
    [[CPower new] twoStep];
    ///对象适配
    [[CObjectPower new]twoStep];
}

#import "MallardDuck.h"
#import "WildTurkey.h"
#import "TurkeyAdapter.h"

static void testDuck(id<DuckA> duck) {
    [duck quack];
    [duck fly];
}


__attribute__((constructor))
static void beforeDuckMain(void) {
    MallardDuck *duck =  [MallardDuck new];
    testDuck(duck);
    
    WildTurkey *turkey = [WildTurkey new];
    TurkeyAdapter *adapter = [[TurkeyAdapter alloc]initWithTurkey:turkey];
//    3. 客户接收到调用的结果,但并未察觉这一切是适配器在起到转换作用
    testDuck(duck);
}

