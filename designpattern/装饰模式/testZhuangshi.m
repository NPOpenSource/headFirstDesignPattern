//
//  testZhuangshi.m
//  designpattern
//
//

#import <Foundation/Foundation.h>
#import "Mocha.h"
#import "Espresso.h"
#import "HouseBlend.h"
#import "Beverage.h"

//__attribute__((constructor))
static void beforeMain(void) {
    Beverage *beverage = [Espresso new];
    NSLog(@"%@ $%.2f",beverage.desc,beverage.cost);
    Beverage *beverage2 = [HouseBlend new];
    beverage = [[Mocha alloc]initWithBeverage:beverage];
    NSLog(@"%@ $%.2f",beverage2.desc,beverage2.cost);
}

