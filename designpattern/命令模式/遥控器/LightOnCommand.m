//
//  LightOnCommand.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "LightOnCommand.h"

@interface LightOnCommand ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOnCommand

- (instancetype)initWithLight:(Light *)light {
    self = [super init];
    if (self) {
        self.light = light;
    }
    return self;
}

- (void)execute {
    [self.light on];
}

@end
