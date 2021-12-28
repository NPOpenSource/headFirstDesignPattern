//
//  Mocha.m
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import "Mocha.h"

@implementation Mocha

- (NSString *)desc {
    return [self.beverage.desc stringByAppendingFormat:@", Mocha"];
}

-(double)cost {
    return .20 + self.beverage.cost;
}

@end
