//
//  GarageDoorOpenCommand.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "GarageDoorOpenCommand.h"

@interface GarageDoorOpenCommand ()

@property (nonatomic, strong) GarageDoor *door;

@end

@implementation GarageDoorOpenCommand

- (instancetype)initWithGarageDoor:(GarageDoor *)garageDoor {
    self = [super init];
    if (self) {
        self.door = garageDoor;
    }
    return self;
}

- (void)execute {
    [self.door on];
}

@end
