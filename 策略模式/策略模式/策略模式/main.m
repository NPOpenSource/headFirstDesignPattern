//
//  main.m
//  策略模式
//
//  Created by glodon on 2021/12/27.
//

#import <Foundation/Foundation.h>
#import "MiniDuck.h"
#import "ModelDuck.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Duck *duck = [MiniDuck new];
        [duck display];
        duck = [ModelDuck new];
        [duck display];
    }
    return 0;
}
