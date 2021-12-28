//
//  testcelue.m
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
#import "MiniDuck.h"
#import "ModelDuck.h"

//__attribute__((constructor))
static void beforeMain(void) {
    Duck *duck = [MiniDuck new];
    [duck display];
    duck = [ModelDuck new];
    [duck display];
}

#import "Context.h"
#import "OperationAdd.h"
#import "OperationMultiply.h"
#import "OperationSubStract.h"

//__attribute__((constructor))
static void testOperationMain(void) {
    Context * context = [[Context alloc]init];
    context.strategy = [OperationAdd new];
    [context calulate];
    context.strategy = [OperationMultiply new];
    [context calulate];
    context.strategy = [OperationSubStract new];
    [context calulate];
}




