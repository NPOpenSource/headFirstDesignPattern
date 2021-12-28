//
//  Espresso.m
//  designpattern
//
//  Created by glodon on 2021/12/27.
//

#import "Espresso.h"

@implementation Espresso

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.desc = NSStringFromClass(self.class);
    }
    return self;
}

- (double)cost {
    return 1.99;
}

@end
