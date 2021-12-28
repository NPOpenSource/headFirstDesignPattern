//
//  SimpleRemoteControl.m
//  designpattern
//
//  Created by glodon on 2021/12/28.
//  Copyright © 2021 com.open.design. All rights reserved.
//

#import "SimpleRemoteControl.h"

@interface SimpleRemoteControl ()

@property (nonatomic, strong) id<Command> cmd;

@end

@implementation SimpleRemoteControl

- (void)setCommand:(id<Command>)command {
    self.cmd = command;
}

- (void)buttonWaPressed {
    [self.cmd execute];
}

@end
