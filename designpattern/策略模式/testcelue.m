//
//  testcelue.m
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import "testcelue.h"
#import "MiniDuck.h"
#import "ModelDuck.h"

//__attribute__((constructor))
static void beforeMain(void) {
    Duck *duck = [MiniDuck new];
    [duck display];
    duck = [ModelDuck new];
    [duck display];
}




