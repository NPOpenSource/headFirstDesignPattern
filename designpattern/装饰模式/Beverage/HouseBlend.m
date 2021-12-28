//
//  HouseBlend.m
//  designpattern
//
//

#import "HouseBlend.h"

@implementation HouseBlend

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.desc = NSStringFromClass(self.class);
    }
    return self;
}

- (double)cost {
    return 0.89;
}

@end
