//
//  TurkeyAdapter.m
//  designpattern
//
//  Created by glodon on 2021/12/29.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "TurkeyAdapter.h"

@interface TurkeyAdapter ()

@property (nonatomic, strong) id<Turkey> turkey;

@end

@implementation TurkeyAdapter

- (instancetype)initWithTurkey:(id<Turkey>)turkey {
    self = [super init];
    if (self) {
        self.turkey = turkey;
    }
    return self;
}

- (void)quack {
    [self.turkey gobble];
}

-(void)fly {
    for (int i=0; i<5; i++) {
        [self.turkey fly];
    }
}

@end
